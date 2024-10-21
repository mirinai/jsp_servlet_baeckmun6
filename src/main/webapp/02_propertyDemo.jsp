<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바 빈 property 얻고 바꾸기(getProperty, setProperty 액션 태그)</title>
</head>
<body>
    <!-- JavaBean 객체 생성 -->
    <jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>

    <hr>
    ◎ 자바 빈 객체 생성 뒤 저장된 정보 출력하기 <br><br>

    <!-- JavaBean의 name 속성 출력 -->
    이름 : <jsp:getProperty property="name" name="member"/><br>

    <!-- JavaBean의 userid 속성 출력 -->
    아이디 : <jsp:getProperty property="userid" name="member"/>

    <hr>
    ◎ 정보 바꾼 뒤에 바뀌어진 정보 출력하기 <br><br>

    <!-- JavaBean의 name 속성 값 설정 -->
    <jsp:setProperty property="name" name="member" value="mirinai"/>

    <!-- JavaBean의 userid 속성 값 설정 -->
    <jsp:setProperty property="userid" name="member" value="root"/>

    <!-- 변경된 name 속성 출력 -->
    이름 : <jsp:getProperty property="name" name="member"/><br>

    <!-- 변경된 userid 속성 출력 -->
    아이디 : <jsp:getProperty property="userid" name="member"/><br>

</body>
</html>
