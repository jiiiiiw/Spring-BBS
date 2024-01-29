<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<li class="nav-item"><a class="nav-link" href="bbs.jsp">자유게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="#">전술 틀
							등록하기</a></li>
				</ul>
			</div>

			<div class="dropdown">
				<button class="btn btn-primary dropdown-toggle" type="button"
					id="dropdownMenuButton" data-bs-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">접속하기</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

					<a class="dropdown-item" href="login.jsp">로그인</a> <a
						class="active dropdown-item" href="join.jsp">회원가입</a>
					<!-- 원하는 만큼 드롭다운 메뉴 항목 추가 -->
				</div>
			</div>
		</div>
	</nav>
	
	<style>
  .spacer {
    margin-bottom: 10px;
  }
	</style>
	
	<div class="container mt-3">
		<div class="row justify-content-center">
			<div class="col-lg-6">
				<div class="jumbotron" style="padding-top: 20px;">
					<form method="post" action="joinAction.jsp">
						<h3 style="text-align: center;">회원가입 화면</h3>
						<div class="form group spacer">
							<input type="text" class="form-control" placeholder="아이디"
								name="userID" maxlength="20">
						</div>
						<div class="form group spacer">
							<input type="password" class="form-control" placeholder="비밀번호"
								name="userPassword" maxlength="20">
						</div>
						<div class="form group spacer">
							<input type="text" class="form-control" placeholder="이름"
								name="userName" maxlength="20">
						</div>
						
						<div class="form-group spacer" style="text-align: center;">
							<input type="radio" class="btn" name="userPosition" id="GK" value="GK"  autocomplete="off">
							<label class="btn btn-secondary" for="GK">GK</label>

							<input type="radio" class="btn" name="userPosition" id="DF" value="DF" autocomplete="off">
							<label class="btn btn-secondary" for="DF">DF</label>

							<input type="radio" class="btn" name="userPosition" id="MF" value="MF" autocomplete="off">
							<label class="btn btn-secondary" for="MF">MF</label>

							<input type="radio" class="btn" name="userPosition" id="FW" value="FW" autocomplete="off">
							<label class="btn btn-secondary" for="FW">FW</label>
						</div>
						<!-- <div class="form-group" style="text-align: center;">
							<div class="btn-group" data-toggle="buttons">
								<label class="btn btn-primary active">
									<input type="radio" name="userPosition" autocomplete="off" value="GK" checked>GK
								</label>
								<label class="btn btn-primary">
									<input type="radio" name="userPosition" autocomplete="off" value="DF" checked>DF
								</label>
								<label class="btn btn-primary">
									<input type="radio" name="userPosition" autocomplete="off" value="MF" checked>MF
								</label>
								<label class="btn btn-primary">
									<input type="radio" name="userPosition" autocomplete="off" value="FW" checked>FW
								</label>
							</div>
						</div> -->

						<div class="form group spacer">
							<input type="email" class="form-control" placeholder="이메일"
								name="userEmail" maxlength="20">
						</div>
						<input type="submit" class="btn btn-primary form-control"
							value="회원가입">
					</form>
				</div>
			</div>
		</div>
	</div>




</body>
</html>