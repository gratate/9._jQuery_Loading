<%@ page contentType="text/html;charset=MS950" language="java"%>
<jsp:useBean id="obj" scope="request" class="tw.gov.moiland.reg.rh005.RH00501">
	<jsp:setProperty name="obj" property="*" />
</jsp:useBean>

<%
	String cityCode = request.getParameter("cityCode");
	
	String rslt = "";
	if(cityCode != null){
		rslt = obj.querySite(cityCode);
	} else{
		rslt = "error:���ǻ�����Ѽ�";
	}
	response.setCharacterEncoding("UTF-8");	//fix IE success ���쪺���e�Oundefined
	response.getWriter().write(rslt);
%>