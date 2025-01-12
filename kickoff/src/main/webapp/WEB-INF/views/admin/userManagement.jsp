<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/admin/css/main.css" />
<link rel="stylesheet" href="/admin/css/theme.css" />
<link href="/admin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
<link href="/admin/vendor/select2/select2.min.css" rel="stylesheet" media="all">

<title>Kick Off: 관리자-회원 관리</title>
</head>
<body>
	<div id="wrapper">
		<div id="main">
			<div class="inner">
				<header id="header">
					<a href="/userManagement" class="logo"><strong>마이 페이지</strong>관리자 전용</a>
				</header>
				<section id="banner">
					<div class="content">
						<header>
							<h1>회원 관리</h1>
						</header>
					</div>
				</section>
				<div class="col-lg-6">
					<div class="user-data m-b-30">
						<h3 class="title-3 m-b-30">
							<i class="zmdi zmdi-account-calendar"></i>user data
						</h3>
						<div class="filters m-b-45">
							<div
								class="rs-select2--dark rs-select2--md m-r-10 rs-select2--border">
								<select class="js-select2" name="property">
									<option selected="selected">모두</option>
									<option value="">개인 회원</option>
									<option value="">개인 회원-팀장</option>
									<option value="">업체 회원</option>
									<option value="">관리자</option>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
							<div
								class="rs-select2--dark rs-select2--md m-r-10 rs-select2--border">
								<select class="js-select2" name="property">
									<option selected="selected">모두</option>
									<option value="">활동 회원</option>
									<option value="">정지 회원</option>
								</select>
								<div class="dropDownSelect2"></div>
							</div>
							<form method="POST" action="/manageMember">
								<div class="userType">
									<label>
										<input type="radio" name="userType" value="user" checked>&nbsp; 개인 회원 &nbsp; 
									</label>
									<label>
										<input type="radio" name="userType" value="emp">&nbsp; 업체 회원
									</label>
								</div>
								<div class="managementUser">
									<input type="text" name="id" id="inputId" placeholder="정지/탈퇴시킬 회원의 아이디를 입력하세요.">
									<button type="submit" name="action" value="disable" id="disableBtn" onclick="userAction('disable')">회원 강제 정지</button>
									<button type="submit" name="action" value="delete" id="deleteBtn" onclick="userAction('delete')">회원 강제 탈퇴</button>
								</div>
							</form>
						</div>
						<div class="table-responsive table-data">
							<table class="table">
								<thead>
									<tr>
										<td>이름/아이디</td>
										<td>구분</td>
										<td>취소 횟수</td>
										<td>정지 횟수</td>
										<td>상태</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="map" items="${userList}">
										<tr>
											<td>
												<div class="table-data__info">
													<h4>
														<c:out value="${map.NAME}" />
													</h4>
													<span> 
														<a><c:out value="${map.ID}" /></a>
													</span>
												</div>
											</td>
											<td>
												<span class="classification" data-classification="${map.CLASSIFICATION}">
													<c:out value="${map.CLASSIFICATION}" />
												</span>
											</td>
											<td><span class="cancel-number">
												<c:out value="${map.CANCEL_COUNT}" /></span>
											</td>
											<td><span class="rest-number">
												<c:out value="${map.STOP_COUNT}" /></span>
											</td>
											<td>
												<span class="status" data-status="${map.STATUS}">
													<c:out value="${map.STATUS}" />
												</span>
												<button type="button" class="cancel-button" onclick="cancelDisable('${map.ID}')">정지 취소</button>
											</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<!-- END USER DATA-->
				</div>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">
			<div class="inner">

				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>Menu</h2>
					</header>
					<ul>
						<li><a href="/userManagement">회원 관리</a></li>
						<li><a href="/boardManagement">신고 게시글 관리</a></li>
					</ul>
				</nav>

			</div>
		</div>

	</div>
	


	<!-- userManagement -->
	<script src="/admin/js/userManagement.js"></script>

	<!-- Scripts -->
	<script src="/admin/js/jquery.min.js"></script>
	<script src="/admin/js/skel.min.js"></script>
	<script src="/admin/js/util.js"></script>

	<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
	<script src="/admin/js/main.js"></script>


	<!-- Jquery JS-->
	<script src="/admin/vendor/jquery-3.2.1.min.js"></script>
	<script src="/admin/vendor/counter-up/jquery.waypoints.min.js"></script>
	<script src="/admin/vendor/counter-up/jquery.counterup.min.js"></script>


	<!-- Vendor JS       -->
	<script src="/admin/vendor/select2/select2.min.js"></script>


	</script>

	<!-- Main JS-->
	<script src="/admin/js/user.js"></script>

</body>
</html>