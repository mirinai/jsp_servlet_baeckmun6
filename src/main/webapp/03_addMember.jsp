<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
<jsp:setProperty property="*" name="member"/>
<!-- property="*": 모든 요청 파라미터 이름과 일치하는 Bean의 속성을 찾아 자동으로 값을 설정합니다. 
예를 들어, 요청에 username, password 등의 파라미터가 있다면, Bean의 setUsername(), setPassword() 메서드를 호출하여 값을 설정합니다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원의 정보 처리 페이지</title>
</head>
<body>
	<h2>입력 된 회원 정보</h2>
	
	<form action="03_addMember.jsp">
		<table>
			<tr>
				<td > 이름   </td>
				<td>
					<jsp:getProperty property="name" name="member"/>
				</td>
			</tr>
			<tr>
				<td> 아이디  </td>
				<td>
					<jsp:getProperty property="userid" name="member"/>
				</td>
			</tr>
			<tr>
				<td> 별명    </td>
				<td>
					<jsp:getProperty property="nickname" name="member"/>
				</td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td>
					<jsp:getProperty property="pwd" name="member"/>
				</td>
			</tr>
			<tr>
				<td> 이메일  </td>
				<td>
					<jsp:getProperty property="email" name="member"/>
				</td>
			</tr>
			<tr>
				<td> 전화번호 </td>
				<td>
					<jsp:getProperty property="phone" name="member"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>


