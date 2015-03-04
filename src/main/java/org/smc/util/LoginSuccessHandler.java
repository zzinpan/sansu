package org.smc.util;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.web.util.WebUtils;

public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler{
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request,
			HttpServletResponse response, Authentication authentication)
			throws ServletException, IOException {

		String page = request.getParameter("page");
		
		String id = request.getParameter("member_id");
		
		System.out.println(id);
		
		WebUtils.setSessionAttribute(request, "member_id", id);
		
		page = page.substring(0,page.indexOf("@"));
		
		if(page != null){
			
			response.sendRedirect(page);
			
		}
		
		super.onAuthenticationSuccess(request, response, authentication);
	}

}
