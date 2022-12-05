<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

<head>
<title>Insert title here</title>
</head>
<body>

<table class="table table-dark">
  <thead>
  
    <tr>
      <th scope="col">번호</th>
      <th scope="col" style="width: 60%; text-align: center;" >제목</th>
      <th scope="col">날짜</th>
      <th scope="col">이름</th>
    </tr>
  </thead>
  <tbody>
	  <c:forEach var="dto" items="${boardList }">
	    <tr onclick="location.href='boardView?board_idx=${dto.board_idx}'" >
	      <th scope="row">${dto.board_idx }</th>
	      <td style="width: 60%; text-align: center;" >${dto.board_title }</td>
	      <td>${dto.board_date }</td>
	      <td>${dto.board_name }</td>
	    </tr>
	  </c:forEach>
  </tbody>
</table>
  <button type="button" onclick="location.href='/writeForm'"  class="btn btn-primary">글쓰기</button>



</body>
</html>