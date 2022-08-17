<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.* " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL�� ������ �ð��븦 �ٲٴ� ���</h2>
	<c:set value="<%= new Date() %>" var="today"/>
	<h3>���ѹα�</h3>
	<fmt:setLocale value="ko_kr"/>
	�ݾ� : <fmt:formatNumber value="3300000" type="currency" currencySymbol="��"/><br/>
	�Ͻ� : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<br/>
	<h3>�� ��</h3>
	<fmt:setLocale value="ja_jp"/>
	�ݾ� : <fmt:formatNumber value="3300000" type="currency"/><br/>
	�Ͻ� : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<h3>�� ��</h3>
	<fmt:setLocale value="en_us"/>
	�ݾ� : <fmt:formatNumber value="3300000" type="currency"/><br/>
	�Ͻ� : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<h3>���þ�</h3>
	<fmt:setLocale value="ru_ru"/>
	�ݾ� : <fmt:formatNumber value="3300000" type="currency"/><br/>
	�Ͻ� : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	
	<fmt:setLocale value="ko_kr"/>
	<%
		String[] timeList = TimeZone.getAvailableIDs();
		for(int i=0; i<timeList.length; i++){
			out.print(timeList[i]+"<br/>");
		}
	%>
	<h3>������ ���� �ð�</h3>
	<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<h3>ȫ���� ���� �ð�</h3>	
	<fmt:timeZone value="Asia/Hong_Kong">
		<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	</fmt:timeZone>
	<h3>������ ���� �ð�</h3>
	<fmt:timeZone value="Europe/London">
		<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	</fmt:timeZone>
	<h3>�ι����� ���� �ð�</h3>
	<fmt:timeZone value="Asia/Dubai">
		<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	</fmt:timeZone>
</body>
</html>