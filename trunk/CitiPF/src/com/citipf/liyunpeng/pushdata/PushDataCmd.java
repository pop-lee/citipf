package com.citipf.liyunpeng.pushdata ;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PushDataCmd extends HttpServlet {
	
	private static final long serialVersionUID = 3722621486592934780L;

//	public static void main(String[] args) {
//		PushDataService.getInstance().start();
//	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String cmd = req.getParameter("cmd");
		if (cmd.equals("start")) {
			PushDataService.getInstance().start();
		}
		if (cmd.equals("stop")) {
			PushDataService.getInstance().stop();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	
}
