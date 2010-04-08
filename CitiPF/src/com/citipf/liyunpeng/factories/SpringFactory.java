package com.citipf.liyunpeng.factories;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.NoSuchBeanDefinitionException;

import flex.messaging.FactoryInstance;
import flex.messaging.FlexFactory;
import flex.messaging.config.ConfigMap;
import flex.messaging.services.ServiceException;

public class SpringFactory implements FlexFactory {
	private static final String SOURCE = "source";

	/**
	 * 这个方法用于初始化工厂，工厂标记( factory tag)中定义了工厂的id,通过配置参数来调用.
	 */
	public void initialize(String id, ConfigMap configMap) {
	}

	/**
	 * 当初始化预定义的实例的时候在工厂中查询该实例，需要验证实例中定义的属性提供者的有效性。
	 * 任何有效的属性作为这个配置必须避免使用配置标记的警告。如果工厂只在应用程序作用域构件使用
	 * 这个方法能够简单的返回工厂实例，该实例通过代理创建组件，工厂实例中的lookup方法.
	 */
	public FactoryInstance createFactoryInstance(String id, ConfigMap properties) {
		SpringFactoryInstance instance = new SpringFactoryInstance(this, id,
				properties);
		instance.setSource(properties.getPropertyAsString(SOURCE, instance
				.getId()));
		return instance;
	}

	/**
	 * 
	 * 查询实例
	 */
	public Object lookup(FactoryInstance inst) {
		SpringFactoryInstance factoryInstance = (SpringFactoryInstance) inst;
		return factoryInstance.lookup();
	}

	static class SpringFactoryInstance extends FactoryInstance {
		SpringFactoryInstance(SpringFactory factory, String id,
				ConfigMap properties) {
			super(factory, id, properties);
		}

		public String toString() {
			return "SpringFactory 实例 id=" + getId() + " source=" + getSource()
					+ " scope=" + getScope();
		}

		public Object lookup() {
			ApplicationContext appContext = WebApplicationContextUtils
					.getWebApplicationContext(flex.messaging.FlexContext
							.getServletConfig().getServletContext());
			String beanName = getSource();
			try {
				return appContext.getBean(beanName);
			} catch (NoSuchBeanDefinitionException nexc) {
				ServiceException e = new ServiceException();
				String msg = "Spring 服务'" + beanName + "' 不存在.";
				e.setMessage(msg);
				e.setRootCause(nexc);
				e.setDetails(msg);
				e.setCode("Server.Processing");
				throw e;
			} catch (BeansException bexc) {
				ServiceException e = new ServiceException();
				String msg = "不能创建 Spring 服务 '" + beanName + "' ";
				e.setMessage(msg);
				e.setRootCause(bexc);
				e.setDetails(msg);
				e.setCode("Server.Processing");
				throw e;
			}
		}

	}

}
