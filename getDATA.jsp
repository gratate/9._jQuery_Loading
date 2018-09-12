<%@ page contentType="text/html;charset=MS950" language="java"%>

<%
	String cityCode = request.getParameter("cityCode");
	
	String rslt = "";
	Thread.sleep(10000);
	response.setCharacterEncoding("UTF-8");	//fix IE success 接到的內容是undefined
	response.getWriter().write(rslt);
%>