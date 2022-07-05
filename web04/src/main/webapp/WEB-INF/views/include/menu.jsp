<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header id="hd" class="header">
    <div class="hd_wrap top">
        <nav id="tnb" class="nav">
            <a href="${path1 }" class="logo"><img src="${path1 }/data/img_logo.png" alt="로고타입"></a>
            <ul class="right_con top_nav">
            	<!--  로그인 전 -->
            	<c:if test="${empty sid }">
                <li><a href="${path1 }/member/loginForm.do" class="login">로그인</a></li>
                <li><a href="${path1 }/member/joinForm.do" class="join">회원가입</a></li>
                </c:if>
                <!--  로그인 후 -->
                <c:if test="${!empty sid }">
                <li><span>${sid }</span>님</li>
                <li><a href="${path1 }/member/read.do" class="mypage">마이페이지</a></li>
                <li><a href="${path1 }/member/logout.do" class="logout">로그아웃</a></li>
                </c:if>
                <!-- 관리자만 -->
                <c:if test="${sid=='admin' }">
				<li><a href="${path1 }/member/list.do">회원 목록</a></li>
				<li><a href="${path1 }/board/list.do">게시판 목록</a></li>
				<li><a href="${path1 }/board/write_form.do">글 쓰기</a></li>
				<li><a href="${path1 }/databank/list.do">자료실 목록</a></li>
				<li><a href="${path1 }/databank/writeForm.do">자료 등록</a></li>
				</c:if>
            </ul>
        </nav>
    </div>
    <div class="hd_wrap main">
        <nav id="gnb" class="nav">
            <ul class="left_con">
                <li>
                    <a href="" class="dp1">진료예약</a>
                    <ul class="sub">
                        <li><a href="" class="dp2">의료진 소개</a></li>
                        <c:if test="${!empty sid }"><!-- 로그인한 경우만 진료 예약이나 질문 가능 -->
                        <%-- <li><a href="${path1 }/reservate/writeForm.do" class="dp2">온라인 예약</a></li> --%>
                        <li><a href="" class="dp2">자주 묻는 질문</a></li>
                        <li><a href="${path1 }/qna/writeForm.do" class="dp2">질문 및 답변</a></li>
                        <li><a href="${path1 }/email/writeForm.do" class="dp2">온라인 상담</a></li>
                        </c:if>
                    </ul>
                </li>
                <li>
                    <a href="" class="dp1">진료안내</a>
                    <ul class="sub">
                        <li><a href="" class="dp2">진료 일정</a></li>
                        <li><a href="" class="dp2">외래진료안내</a></li>
                        <li><a href="" class="dp2">입.퇴원안내</a></li>
                        <li><a href="" class="dp2">오시는 길</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" class="dp1">이용안내</a>
                    <ul class="sub">
                        <li><a href="" class="dp2">꿈틀꽃씨쉼터</a></li>
                        <li><a href="" class="dp2">문병안내</a></li>
                        <li><a href="" class="dp2">전화번호안내</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" class="dp1">고객참여</a>
                    <ul class="sub">
                        <li><a href="" class="dp2">고객의소리</a></li>
                        <li><a href="" class="dp2">환자권리장전</a></li>
                        <li><a href="${path1 }/databank/list.do" class="dp2">건강자료실</a></li>
                    </ul>
                </li>
                <li>
                    <a href="" class="dp1">병원소개</a>
                    <ul class="sub">
                        <li><a href="${path1 }/board/list.do" class="dp2">병원 소식</a></li>
                        <li><a href="" class="dp2">설립목적</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>