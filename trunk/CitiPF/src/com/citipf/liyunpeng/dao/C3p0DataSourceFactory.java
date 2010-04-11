package com.citipf.liyunpeng.dao;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.ibatis.datasource.DataSourceException;
import org.apache.ibatis.datasource.DataSourceFactory;
import org.apache.ibatis.reflection.MetaObject;

public class C3p0DataSourceFactory implements DataSourceFactory {

	private DataSource dataSource;

	public C3p0DataSourceFactory() {
		dataSource = new C3p0DataSource();
	}

	@Override
	public DataSource getDataSource() {
		return dataSource;
	}
	
	public void setProperties(Properties properties) {
		Properties driverProperties = new Properties();
		MetaObject metaDataSource = MetaObject.forObject(dataSource);
		for (Object key : properties.keySet()) {
			String propertyName = (String) key;
			if (propertyName.startsWith(DRIVER_PROPERTY_PREFIX)) {
				String value = properties.getProperty(propertyName);
				driverProperties.setProperty(propertyName
						.substring(DRIVER_PROPERTY_PREFIX_LENGTH), value);
			} else if (metaDataSource.hasSetter(propertyName)) {
				String value = (String) properties.get(propertyName);
				Object convertedValue = convertValue(metaDataSource,
						propertyName, value);
				metaDataSource.setValue(propertyName, convertedValue);
			} else {
				throw new DataSourceException("Unkown DataSource property: "
						+ propertyName);
			}
		}
		if (driverProperties.size() > 0) {
			metaDataSource.setValue("driverProperties", driverProperties);
		}
	}

	@SuppressWarnings("unchecked")
	private Object convertValue(MetaObject metaDataSource, String propertyName,
			String value) {
		Object convertedValue = value;
		Class targetType = metaDataSource.getSetterType(propertyName);
		if (targetType == Integer.class || targetType == int.class) {
			convertedValue = Integer.valueOf(value);
		} else if (targetType == Long.class || targetType == long.class) {
			convertedValue = Long.valueOf(value);
		} else if (targetType == Boolean.class || targetType == boolean.class) {
			convertedValue = Boolean.valueOf(value);
		}
		return convertedValue;
	}

	private static final String DRIVER_PROPERTY_PREFIX = "jdbc.";
	private static final int DRIVER_PROPERTY_PREFIX_LENGTH = DRIVER_PROPERTY_PREFIX
			.length();

}
