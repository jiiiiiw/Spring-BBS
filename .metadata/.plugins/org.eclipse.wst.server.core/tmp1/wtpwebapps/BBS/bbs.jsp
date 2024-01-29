<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 반응형 -->
<meta name="viewport" content="width=device-width" , initial-scale="1">
<!-- 정적 부트스트랩 참조 -->
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.bundle.js"></script>
<link href="css/bootstrap.css" rel="stylesheet">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="main.jsp">방구석 퍼거슨</a>

			<!-- 토글 버튼 -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar 링크 및 폼 -->
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav me-auto">
					<li class="nav-item"><a class="nav-link" href="main.jsp">메인</a></li>
					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
					<li class="nav-item"><a class="active nav-link" href="bbs.jsp">자유게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="#">전술 틀
							등록하기</a></li>
				</ul>
			</div>

			<%
			if (userID != null) {
			%>
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-bs-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">로그아웃</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

					<a class="dropdown-item" href="logoutAction.jsp">로그아웃</a>
					<!-- 원하는 만큼 드롭다운 메뉴 항목 추가 -->
				</div>
			</div>
			<%
			} else {
			%>
			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-bs-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">접속하기</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

					<a class="dropdown-item" href="login.jsp">로그인</a> <a
						class="dropdown-item" href="join.jsp">회원가입</a>
					<!-- 원하는 만큼 드롭다운 메뉴 항목 추가 -->
				</div>
			</div>
			<%
			}
			%>
		</div>
	</nav>
	
	<style>
    /* 우측 하단에 버튼 고정 스타일 */
    .fixed-bottom-right {
      position: fixed;
      bottom: 16px;
      right: 16px;
    }

    /* 작은 버튼 스타일 */
    .small-btn {
      padding: 6px 12px;
      font-size: 12px;
    }
  </style>
	
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>안녕하세요.</td>
						<td>김종우</td>
						<td>2024-01-29</td>
					</tr>
				</tbody>
			</table>
			<a href="write.jsp" class="btn btn-primary fixed-bottom-right small-btn">글쓰기</a>
		</div>
	</div>
	

</body>
</html>