<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kick Off: 마이페이지</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="/myPage/css/myInfo.css">
	<link rel="stylesheet" href="/myPage/css/main.css" />
	
	<c:if test="${success != null}">
		<script type="text/javascript">
			alert("새 비밀번호로 로그인해주세요.");
			location.replace('loginAll');
		</script>
	</c:if>
</head>
<body>
	<div id="wrapper">
		<div id="main">
			<div class="inner">
				<header id="header">
					<input type="button" onclick="location.href='main'" class="kickoff" value="Kick Off"/>
					<br>
					<a href="/myInfoCheck" class="logo"><strong>회원 정보 수정</strong></a>
				</header>
				<section class="checkout spad">
					<div class="container">
						<div class="checkout__form">
							<form role="form" id="frm" name="frm" action="/myInfoPwResult" method="POST">
								<div class="row-request-container">
									<div class="col-lg-8-1 col-md-6 check">
										<div class="checkout__input__request pw">
											<p>새 비밀번호<span>*</span></p>
											<input type="password" id="userPw" class="inputBox" name="userPw" />
											<span class="msg">${msg}</span>
										</div>
										<div class="checkout__input__request pw">
											<p>새 비밀번호 확인<span>*</span></p>
											<input type="password" id="userPw2" class="inputBox" name="userPw2"/>
											<span class="msg2">${msg2}</span>
										</div>
										<div class="btn-container">
											<input type="submit" id="update" class="userCheck" value="수정"/>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</section>
			</div>
		</div>
		<div id="sidebar">
			<div class="inner">
				<nav id="menu">
					<header class="major">
						<h2>MyPage</h2>
					</header>
					<ul>
						<li><a href="/myReservation">예약 내역</a></li>
						<li><a href="/myBoardList">내 게시글</a></li>
						<li><a href="/myInfoCheck">회원 정보 수정</a></li>
						<li><a href="/myTeam">팀</a></li>
						<li><a href="/myMessage">메시지</a></li>
						<li><a href="/myHelper">용병</a></li>
						<li><a href="/myGameRecordList">매칭</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	
	<!-- Scripts -->
	<script src="/myPage/js/jquery.min.js"></script>
	<script src="/myPage/js/skel.min.js"></script>
	<script src="/myPage/js/util.js"></script>
	<script src="/myPage/js/mypage.js"></script>
	<script src="/myPage/js/main.js"></script>

</body>
</html>