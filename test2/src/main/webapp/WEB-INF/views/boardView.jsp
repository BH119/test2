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

<form action="/updateAction" method="get">
	<input type="hidden" name="board_idx" value="${dto.board_idx }" >
  <div class="form-group">
    <label for="exampleFormControlInput1">제목</label>
    <input name="board_title" type="text" class="form-control" value="${dto.board_title }" >
  </div>
 <div class="form-group">
    <label for="exampleFormControlInput1">내용</label>
    <textarea name="board_content" class="form-control" >${dto.board_content }</textarea>
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput1">이름</label>
    <input type="text" name="board_name" value="${dto.board_name }" class="form-control" >
  </div>
 
<button type="submit"  class="btn btn-primary">수정하기</button>
<button type="button" onclick="location.href='/'"  class="btn btn-primary">목록으로</button>
<button type="button" onclick="location.href='/deleteAction?board_idx=${dto.board_idx}'"  class="btn btn-primary">삭제하기</button>
</form>

</body>
</html>