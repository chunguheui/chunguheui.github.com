<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="./image/NC.png">
    <link rel="apple-touch-icon" href="./image/NC.png">
    <!-- 검색(메타) 정보 -->
    <meta name="url" content="https://127.0.0.1:5500/web1/index.html">
    <meta name="title" content="NCsoft">
    <meta name="description" content="NCsoft의 WHO WE ARE, WHAT WE CREAT, MEDIA CENTER">
    <meta name="keywords" content="NCsoft, NC, 엔씨, 엔씨소프트, 리니지, 블레이드앤소울">
    <!-- 오픈 그래프(공통,OG) -->
    <meta property="og:url" content="https://127.0.0.1:5500/web1/index.html">
    <meta property="og:title" content="NCsoft">
    <meta property="og:description" content="NCsoft의 WHO WE ARE, WHAT WE CREAT, MEDIA CENTER,
    INVESTORS, CAREERS">
    <meta property="og:image" content="./image/NC.png">
    <title>NCSOFT</title>

    <!-- 기본 플러그인 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <!-- 웹 폰트/폰트 모듈 연결 -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

    <style>
        @font-face {
            font-family: 'Noto Sans KR', sans-serif;
            src : url(https://fonts.google.com/noto/specimen/Noto+Sans+KR?subset=korean);
            font-weight : normal;
            font-style : normal;
        }
        @font-face {
            font-family: 'Noto Sans KR4', sans-serif;
            src: url(https://fonts.google.com/noto/specimen/Noto+Sans+KR?subset=korean);
            font-weight: normal;
            font-style : normal;
        }

        #language { font-size: 14px; font-family4: 'Noto Sans KR', sans-serif;}
    </style>

    <!-- 웹 아이콘 연결 -->
    <!-- XEIcon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

    <!-- 스타일 초기화 모듈 연결 -->
    <link rel="stylesheet" href="./web1/css/reset.css">
    <link rel="stylesheet" href="common.css">

    <style>    
        /* 비주얼 슬라이더 */
        #content { clear:both; width: 100%;}
        #vs { width:100%; overflow:hidden;  } 
        .img_box { width: 400%; }
        .img_box li { float:left; width: 25%; position:relative; }
        .img_box li a { display:block; }
        .img_box li a img { display:block; width: 100%; height:auto; }
        .img_box .tit_box { position:absolute; top:50px; left:50px; color:#fff; 
        text-shadow:1px 1px 1px #333; padding-left: 40px; z-index:30; }
        .vs_tit { font-size:42px; line-height:1.6; }
        .vs_com { font-size:16px; padding-top: 40px; }
        .btn_group { position:absolute; bottom:0px; left:90px; z-index:40; }
        .btn_group button { display:block; width: 80px; height: 80px; float:left; 
            background-color:rgba(0,0,0,0.6); border:none; outline: none; color:#fff; }
        .btn_group button i[class*='xi'] { color: #fff; }
        .btn_group button:hover i[class*='xi'] { cursor:pointer; color:gold; }
        .col_tit { color: white; text-shadow: 1px 1px 1px #333;}
        .col_com { color: white; text-shadow: 1px 1px 1px #333 }
        .col_tit_w { text-shadow: 1px 1px 1px #fff; }
        .col_com_w { text-shadow: 1px 1px 1px #fff; }


        /* 그리드 박스 */
        .grid_box { clear:both; width: 100%; }
        .grid_wrap { clear:both; width: 100%; }
        .grid_wrap li { float: left; height: 16.66667vw; background-position: center center;}
        .grid_wrap li.item1 { background-image: url("./image/lineage.png"); background-size: 150%; }
        .grid_wrap li.item2 { background-image: url("./image/lineage2.jpg");  background-size: 150%;}
        .grid_wrap li.item3 { background-image: url("./image/aion.jpg");  background-size: 150%;}
        .grid_wrap li.item4 { background-image: url("./image/bladeandsoul.jpg");  background-size: 150%;}
        .grid_wrap li.item5 { background-image: url("./image/bladeandsoul2.jpg");  background-size: 150%;}
        .grid_wrap li.item6 { background-color:  #d0dee8; background-size: 150%;}
        .col2 { width :  16.66667%; }
        .grid_wrap li a { display:block; padding:28px;}

    </style>

</head>

<body>   
    <div class="wrap">
        <header id="hd">
			<%@ include file="nav.jsp" %>
        </header>
        <div id="content">
            <div id="vs">
                <ul class="img_box">
                    <li>
                        <a href="">
                            <img src="./image/slide_thumb1.jpg"></img>
                            <div class="tit_box">
                                <h2 class="vs_tit">MMORPG</h2>
                                <p class="vs_com">
                                리니지와 아이온, 블레이드 & 소울 등 엔씨가 창조한 세상은 수많은 사람들이 힘을모아<br>
                                공동의 목표를 향해 돌진하는 MMORPG의 세계입니다.<br>
                                한 명의 뛰어난 영웅이 세상을 바꾸기보다 여럿이 연대해 뜻을 이루고 성취를 나누는 것,<br>
                                그 즐거움이야말로 엔씨가 바라는 게임의 가치입니다.
                            </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">    
                            <img src="./image/slide_thumb2.jpg">
                            <div class="tit_box"> 
                                <h2 class="vs_tit">DIVERSITY</h2>
                                <p class="vs_com">
                                단편소설 작가, 고고학 마니아, 프라모델 설계자 등 어떤 분야의 누구라도 엔씨는 환영합니다.<br>
                                개인의 고유한 지식과 경험, 그리고 다양한 관점은 소중하고 귀한 자원이자 창조의 원천이기 때문입니다.<br>
                                다양성의 가치를 존중하는 엔씨는 각자의 재능과 전문성을 발견하고 융합하여<br>
                                더 크고 새로운 가치를 만들기 위해 노력하고 있습니다.
                                </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">        
                            <img src="./image/slide_thumb3.jpg">
                            <div class="tit_box">
                                <h2 class="vs_tit">SHARED VALUES</h2>
                                <p class="vs_com">
                                엔씨에는 자유로운 공유 문화가 있습니다.<br>
                                회사의 핵심 가치와 주요 이슈를 모든 직원이 함께 논의하는 I&M REPORT와 개발 경험과<br>
                                지식을 서로 공유하고 소통하며 엔씨만의 개발 문화를 만들어 나가는 NCDP 등 생각의 <br>
                                연결과 지식의 전파를 실천하고 있습니다.
                                </p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">            
                            <img src="./image/slide_thumb8.jpg">
                            <div class="tit_box">
                                <h2 class="vs_tit">KNOWLEDGE</h2>
                                <p class="vs_com">
                                엔씨는 끊임없이 학습하고 탐구하는 기업입니다. 문학, 수학, 물리학, 철학, 생물학, 사회학, 미학 등<br>
                                모든 지식은 상상을 현실로 만드는 값진 원료입니다. 한 해 200여 개의 강의가 열리는 엔씨유니버시티와<br>
                                4만여 권의 소장 도서를 보유한 라이브러리에는 세상에 호기심을 품은 많은 이들이 모여<br>
                                즐거움의 창조를 위한 지혜를 쌓고 있습니다.
                                </p>
                            </div>
                        </a>
                    </li>            
                </ul>
                <div class="btn_group">
                    <button class="prev_btn"><i class="xi-arrow-left"></i></button>
                    <button class="next_btn"><i class="xi-arrow-right"></i></button>
                </div>
                    <script>
                    $(document).ready(function(){
                        wd = $(window).width();
                        var intv = setInterval(function(){
                            ani1();
                        }, 3000);
                        function ani1(){
                            $(".img_box").not(":animated").animate({"margin-left":-wd+"px"}, 600, function(){
                            $(".img_box li").eq(0).appendTo($(".img_box"));
                            $(".img_box").css("margin-left","0px");
                            });
                        }
                        function ani2(){
                            $(".img_box").css("margin-left",-wd+"px");
                            $(".img_box li:last-child").prependTo($(".img_box"));
                            $(".img_box").not(":animated").animate({"margin-left":"0px"}, 600);
                        }
                        $(".btn_group .next_btn").click(function(){
                            clearInterval(intv);
                            ani1();
                            intv = setInterval(function(){ ani1(); }, 3000);
                        });
                        $(".btn_group .prev_btn").click(function(){
                            clearInterval(intv);
                            ani2();
                            intv = setInterval(function(){ ani1(); }, 3000);
                        });
                    });    
                </script>
            </div>
            <div class="grid_box">
                <ul class="grid_wrap">
                    <li class="col2 item1">
                        <a href="">
                            <h3 class="col_tit">LINEAGE</h3>
                            <p class="col_com">온라인 문화 컨텐츠의 신화<br>
                                '리니지'</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item2">
                        <a href="">
                            <h3 class="col_tit">LINEAGE2</h3>
                            <p class="col_com">3D 온라인 게임의<br>
                                새로운 시대를 구축한 '리니지2'</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item3">
                        <a href="">
                            <h3 class="col_tit">AION</h3>
                            <p class="col_com">압도적인 아트와 음악의 예술적 MMORPG</p>
                            <span class="arrow"></span>
                        </a>
                    </li>
                    <li class="col2 item4">
                        <a href="">
                            <h3 class="col_tit">BLADE & SOUL</h3>
                            <p class="col_com">스토리부터 그래픽과 기술력까지<br>
                                완성형 무협 액션 MMORPG</p>
                        </a>
                    </li>
                    <li class="col2 item5">
                        <a href="">
                            <h3 class="col_tit">BLADE & SOUL 2</h3>
                            <p class="col_com">다채로운 즐거움으로 액션 MMO의 새 지평을 열다</p>
                        </a>
                    </li>
                    <li class="col2 item6">
                        <a href="">
                            <h3 class="col_tit_w">채용 정보</h3>
                            <p class="col_com_w">즐거움으로 연결된 새로운 세상을 함께 만들어 갈 전문가를 모십니다.</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>   
        <footer i="ft">
			<%@ include file="ft.jsp"%>
        <footer>
    </div>
</body>
</html>