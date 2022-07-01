<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  /* 스크립트릿(scriptlet)  */
	/* "MODEL","BUY","SERVICE","INSIDE","MY르노코리아" */
	/*
	String[] dp1 = {"MODEL","BUY","SERVICE","INSIDE","MY르노코리아"};
	String[][] dp2 = {{"전체 모델 보기","모델비교"},
			{"내 차 만들기 & 견적","구매절차 안내","맞춤형 금융계산기", "이달의 구매 혜택"},
			{"care service","온라인 정비예약","맴버십 서비스","MY 르노코리아 앱"},
			{"뉴스","이벤트"},
			{"회원정보 관리","MY 혜택", "내 차 관리", "정비예약 신청/조회"}};
	String[][] lnk = {{"sub1.jsp#page1","sub1.jsp#page2","sub1.jsp#page3","sub1.jsp#page4"},
			{"sub2.jsp#page1","sub2.jsp#page2"},
			{"service1.jsp","service2.jsp","service3.jsp","service4.jsp"},
			{"board1.jsp","board2.jsp"},
			{"user1.jsp","user2.jsp","user3.jsp","user4.jsp"}};
	*/
	String[] dp1 = {"회사소개","상품소개","서비스","커뮤니티","고객센터"};
	String[][] dp2 = {{"회사개요","인사말","회사연혁","오시는길"},
			{"모니터","스마트폰","태블릿","화상기기"},
			{"온라인서비스","방문서비스","택배서비스"},
			{"게시판","자료실","갤러리"},
			{"이용후기","당부하는말","부정신고센터"}};
	String[][] lnk = {{"sub1.jsp#page1","sub1.jsp#page2","sub1.jsp#page3","sub1.jsp#page4"},
			{"sub2.jsp#page1","sub2.jsp#page2","sub2.jsp#page3","sub2.jsp#page4"},
			{"service1.jsp","service2.jsp","service3.jsp"},
			{"board1.jsp","board2.jsp","board3.jsp"},
			{"user1.jsp","user2.jsp","user3.jsp"}};
%>
<%-- <%=표현식(expression) %> --%>
<a class="logo" href="index.jsp"><img src="./images/logo.svg" alt="로고"></a>
<nav id="gnb">
<ul>
<%
	for(int i=0;i<dp1.length;i++) {
%>
	<li>
		<span class="dp1"><%=dp1[i] %></span>
		<ul class="sub">
<%
		for(int j=0;j<dp2[i].length;j++) {
%>
			<li><a class="dp2" href="<%=lnk[i][j] %>"><%=dp2[i][j] %></a></li>
<%
		}
%>
		</ul>
	</li>
<%
	}
%>
</ul>
</nav>
<p id="tnb">
	<%
		String sid = (String) session.getAttribute("uid");
		String sname = (String) session.getAttribute("name");
		if(sid==null)  {
	%>
			<a href="login.jsp">로그인</a>
			<a href="agree.jsp">회원가입</a>
	<%
		} else if(!sid.equals("admin")) {			 
	%>
			<a href="logout.jsp">로그아웃</a>
			<a href="mypage.jsp"><%=sname %></a>
			<a href="boardList.jsp">게시판</a>
	<%
		} else {
	%>
			<a href="boardList.jsp">게시판 관리</a>
			<a href="memberList_mariaDB_PSTMT.jsp">회원목록</a>
			<a href="">상단3</a>
			<span id="msg_a"></span>
	<% } %>
</p>
<script>
//주소 입력줄로 받은 msg를 받아 출력하는 부분임
	var url = location.href;  //url입력줄의 메시지를 포함한 주소를 저장
	var pos = url.indexOf("?msg=");
	var msg = url.substr(pos+5); //메시지만 추출
	var msg_a = document.getElementById("msg_a"); //해당 msg_a 아이디 요소 선택
	msg_a.innerHTML = msg;
//msg_a.innerHTML = decodeURI(msg);
	if(pos>0) {
		if(msg!=""){
		alert(msg);
		} 
	}
</script>