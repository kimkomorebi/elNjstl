<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	//�̺�Ʈ ��÷���� �̸��� �迭�� �����մϴ�.
	String[] winner = {"ȫ�浿","��ö��","�ڵ���"};
	//�̺�Ʈ ��ǰ �̸��� �迭�� ����
	String[] gift = {"���� TV", "���� �����", "���� ��Ź��"};
	//��÷�� ��ܰ� ��ǰ����  jsp(winner.jsp)���� ���
	request.setAttribute("W", winner);
	request.setAttribute("G", gift);
	RequestDispatcher rd = request.getRequestDispatcher("winner.jsp");
	rd.forward(request, response);
%>


</body>
</html>