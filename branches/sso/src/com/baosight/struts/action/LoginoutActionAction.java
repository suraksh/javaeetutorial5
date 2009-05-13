/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.baosight.struts.action;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 * MyEclipse Struts Creation date: 04-25-2008
 * 
 * XDoclet definition:
 * 
 * @struts.action validate="true"
 * @struts.action-forward name="logionout" path="/jsp/login.jsp"
 */
public class LoginoutActionAction extends Action {
	/*
	 * Generated Methods
	 */

	/**
	 * Method execute
	 * 
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 * @throws IOException
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		// TODO Auto-generated method stub

		String loginType = request.getParameter("loginType");
		request.setAttribute("loginFlag", request.getAttribute("loginFlag"));
		request.getSession().invalidate();
		Cookie []cookies = request.getCookies();  
	      if(cookies!=null){   
	          for(int i=0;i<cookies.length;i++){   
	              String   tempuid_1=cookies[i].getName();    
	              if(tempuid_1.equals("loginUserForSL")){   
	                  cookies[i].setMaxAge(0);   
	                  response.addCookie(cookies[i]);   
	                  System.out.println("loginUserForSL���1");   
	              }   
	              if(tempuid_1.equals("passwordForSL")){   
	                  cookies[i].setMaxAge(0);   
	                  response.addCookie(cookies[i]);   
	                  System.out.println("loginUserForSL���1");   
	              } 
	              if(tempuid_1.equals("loginUserForSSO")){   
	                  cookies[i].setMaxAge(0);   
	                  response.addCookie(cookies[i]);   
	                  System.out.println("loginUserForSSO���1");   
	              } 
	              if(tempuid_1.equals("passwordForSSO")){   
	                  cookies[i].setMaxAge(0);   
	                  response.addCookie(cookies[i]);   
	                  System.out.println("passwordForSSO���1");   
	              } 	              
	            }   
	        }
		if(loginType!=null && loginType.equals("1")){
			response.sendRedirect(request.getContextPath()+"/index_ju.jsp");
		}else if(loginType!=null && loginType.equals("2")){
			response.sendRedirect(request.getContextPath()+"/index_xxzx.jsp");
		}else if(loginType!=null && loginType.equals("3")){
			response.sendRedirect(request.getContextPath()+"/index_slzx.jsp");
		}
		else if(loginType!=null && loginType.equals("4")){
			response.sendRedirect(request.getContextPath()+"/zwzl/zwzl.jsp");
		}
		else if(loginType!=null && loginType.equals("5")){
				response.sendRedirect(request.getContextPath()+"/szyzl/szyzl.jsp");	
		}
		else if(loginType!=null && loginType.equals("6")){
			response.sendRedirect(request.getContextPath()+"/fxzl/fxzl.jsp");	
	}
		else{
			response.sendRedirect(request.getContextPath()+"/index.jsp");
		}

//		 return mapping.findForward("logionout");
		return null;
	}
}