<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%

	String number = (String)session.getAttribute("smsConfirmNum");

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
	
	<link rel="stylesheet" href="/myPage/css/myInfo.css">
	<link rel="stylesheet" href="/myPage/css/main.css" />
	
	<title>Kick Off: 마이페이지</title>
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
							<form role="form" id="frm" name="frm" action="/myInfoResult" method="POST">
								<div class="row-request-container">
									<div class="col-lg-8-1 col-md-6">
										<div class="checkout__input__request">
											<p>아이디<span>*</span></p>
											<input type="text" class="inputBox id" name="userId" value="${userInfo.userId}" readonly/>
										</div>
										<div class="row mail">
											<div class="col-lg-6">
												<div class="checkout__input__request mail">
													<p>이메일<span>*</span></p>
													<input type="text" id="userEmail" class="inputBox mail" name="mail" value="${map.mail}"/>
												</div>
											</div>
											<p class="atSign">@</p>
											<div class="col-lg-6">
												<div class="checkout__input__request email">
													<select id="emailAddress" class="inputBox email">
					                                	<option value="">이메일 선택</option>
					                                	<option value="naver.com" <c:if test="${map.email eq 'naver'}">selected</c:if>>naver.com</option>
					                                	<option value="kakao.com" <c:if test="${map.email eq 'kakao'}">selected</c:if>>kakao.com</option>
					                                	<option value="gmail.com" <c:if test="${map.email eq 'gmail'}">selected</c:if>>gmail.com</option>
					                                	<option value="daum.net"  <c:if test="${map.email eq 'daum'}" >selected</c:if>>daum.net </option>
					                                	<option value="nate.com"  <c:if test="${map.email eq 'nate'}" >selected</c:if>>nate.com </option>
					                                	<option value="direct">직접입력</option>
					                                </select>
												</div>
												<div class="checkout__input__request inputEmail">
				                                	<input type="text" id="selboxDirect" class="inputBox email" />
				                                </div>
				                                <input type="hidden" id="email" name="email" value=""/>
											</div>
										</div>
										<div class="checkout__input__request">
											<p>이 름<span>*</span></p>
											<input type="text" class="inputBox name" name="userName" value="${userInfo.userName}" readonly/>
										</div>
										<div class="row">
											<div class="col-lg-6">
												<div class="checkout__input__request">
													<p>연도<span>*</span></p><!-- placeholder="년(4자)" -->
													<input type="text" id="year" class="inputBox" name="year" value="${map.year}" maxlength="4" />
												</div>
											</div>
											<div class="col-lg-6">
												<div class="checkout__input__request">
													<p>월<span>*</span></p><!-- placeholder="12" -->
													<input type="text" id="month" class="inputBox" name="month" value="${map.month}" maxlength="2"/>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="checkout__input__request">
													<p>일<span>*</span></p><!-- placeholder="25" -->
													<input type="text" id="day" class="inputBox" name="day" value="${map.day}" maxlength="2"/>
												</div>
											</div>
										</div>
										<div class="checkout__input__request">
											<p>휴대폰 번호<span>*</span></p>
											<div class="phone_content">
												<input type="text" id="phone" class="inputBox phone" name="userPhoneNumber" value="${userInfo.userPhoneNumber}" maxlength="13"/>
												<input type="button" id="sendPhone" class="checkPhone phone" onclick="javascript:alert('test : ' + ${number});" value="번호 인증"/>
												<!-- <a href="/reservation" id="cancle" class="cancle">취소</a> -->
											</div>
										</div>
										<div class="checkout__input__request">
											<div id="checkPhoneBox" class="phone_content">
												<input type="text" id="checkPhone" class="inputBox phone" name="checkPhone"/>
												<input type="button" id="checkPhoneBtn" class="checkPhone phone" onclick="" value="확인"/>
												<%-- <input type="hidden" id="smsConfirmNum" name="smsConfirmNum" value="${smsConfirmNum}"/> --%>
												<!-- <a href="/reservation" id="cancle" class="cancle">취소</a> -->
											</div>
										</div>
										<div class="checkout__input__request address">
											<p>도로명 주소<span>*</span></p>
											<input type="text" id="userAddress" class="inputBox" name="userAddress" value="${userInfo.userAddress}" onclick="kakaopost()">
										</div>
										<div class="btn-container">
 											<input type="submit" id="update" class="update" onclick="validCheck()" value="수정"/>
										</div>
										<div class="">
											<a href="javascript:void(0);" id="delete" class="delete" onclick="userDelete()">회원 탈퇴</a>
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
	
	<!-- Kakao postcode -->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!-- Scripts -->
	<script src="/myPage/js/jquery.min.js"></script>
	<script src="/myPage/js/skel.min.js"></script>
	<script src="/myPage/js/util.js"></script>
	<script src="/myPage/js/mypage.js"></script>
	<script src="/myPage/js/main.js"></script>

</body>
</html>