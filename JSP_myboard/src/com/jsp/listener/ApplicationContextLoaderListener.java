package com.jsp.listener;

import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.jsp.action.ApplicationContext;

public class ApplicationContextLoaderListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent sce)  { 

    }

    public void contextInitialized(ServletContextEvent sce)  { 
    	
    	Map<String, Object> applicatinContext = ApplicationContext.getApplicationContext();
    	
    	ServletContext ctx = sce.getServletContext();
    	
    	// 1. Container init
    	Enumeration<String> paramNames = ctx.getInitParameterNames(); // web.xml에 있는 param-name 들을 담음
    	
    	while (paramNames.hasMoreElements()) {
    		String paramName = paramNames.nextElement(); 
    		String classType = ctx.getInitParameter(paramName);
    		
    		// System.out.printf("paramName : %s\tclassType : %s\n",paramName, classType);
    		
    		try {
				Class<?> cls = Class.forName(classType);
				Object targetObj = cls.newInstance();
				
				System.out.println(paramName + " : " + targetObj);
				applicatinContext.put(paramName, targetObj);
				
			} catch (Exception e) {
				// TODO: handle exception
			}
    		
    	}
    	
    	paramNames = ctx.getInitParameterNames();
    	while(paramNames.hasMoreElements()) {
    		String paramName = paramNames.nextElement();
    		String classType = ctx.getInitParameter(paramName);
    		
    		try {
				Class<?> cls = Class.forName(classType);
				
				Method[] methods = cls.getMethods();
				
				for(Method method : methods) {
					if(method.getName().contains("set")) {
						String setInstanceName = ((method.getName().replace("set", "")).charAt(0) + "").toLowerCase()
								+ method.getName().substring(4);
						
						method.invoke(applicatinContext.get(paramName), applicatinContext.get(setInstanceName));
						
						System.out.println("instance inject : "+ paramName + " - " + method.getName());
					}
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
    	}
    	
    }
	
}













