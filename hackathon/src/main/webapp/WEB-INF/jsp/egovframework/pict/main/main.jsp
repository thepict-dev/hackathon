<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="해커톤"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
	    <main id="parallaxCont">
		    <section id="section1" class="parallaxItem">
		        <div class="videoWrap">
		            <video src="/front_img/main-video.mp4" autoplay loop muted></video>
		        </div>
		    </section>
		    <section id="section2" class="parallaxItem">
		        <div class="text-container">
		            <div class="parallaxItemText">
		                <p class="t1 odometer">40.000</p>
		                <span class="t3">시간 동안</span>
		            </div>
		            <div class="parallaxItemText">
		                <span class="t4">펼쳐질</span>
		                <p class="t2">혁신의 여정</p>
		            </div>
		            <div class="dateTexts">
		                <div class="parallaxItemText t5">
		                    <p>2024.8.23</p><span>부터</span>
		                </div>
		                <div class="parallaxItemText t6">
		                    <p>2024.8.25</p><span>까지</span>
		                </div>
		            </div>
		        </div>
		    </section>
		    <section id="section3" class="parallaxItem">
		        <div class="secInner">
		            <h2 class="t1">디지털 시대의<br>새 지평을 열다</h2>
		            <p class="t2">대한민국 SW융합 해커톤 대회는 디지털 시대를 선도하는 국내 최대 규모의 해커톤입니다.<br>창의적이고 혁신적인 소프트웨어 솔루션을 개발하며, 기술과 경험, 노하우를 공유하고 함께 성장합니다.</p>
		            <ul class="circles">
		                <li class="i1">
		                    <span>참가 대상</span>
		                    <p class="bigTitle">총 55개 팀 이내</p>
		                    <p class="smallTitle">팀당 2-5인 구성</p>
		                </li>
		                <li class="i2">
		                    <span>참가 자격</span>
		                    <p class="bigTitle">만 15세 이상 누구나</p>
		                    <p class="smallTitle">중·고·대학생 및 일반인</p>
		                </li>
		                <li class="i3">
		                    <span>개최 장소</span>
		                    <p class="bigTitle">춘천 봄내체육관</p>
		                    <p class="smallTitle">강원특별자치도 춘천시 평화로 25</p>
		                </li>
		                <li class="i4">
		                    <span>상금 규모</span>
		                    <p class="bigTitle">5,100만원</p>
		                    <p class="smallTitle">대상/우수상/특별상</p>
		                </li>
		            </ul>
		        </div>
		    </section>
		    <section id="section4" class="parallaxItem">
		        <div class="secInner">
		            <h2 class="t1">디지털 혁신의 중심에서 새로운 시대를 열어갑니다 <span>미래를 선도할 기술과 창의력을 발휘하세요</span></h2>
		            <ul class="boxes">
		                <li class="i1">
		                    <span>자유과제</span>
		                    <p>디지털 기반 SW융합제품 또는 서비스 개발</p>
		                </li>
		                <li class="i2">
		                    <span>지정 과제 ①</span>
		                    <p>지역사회 현안해결을 위한 SW융합제품 및 서비스 개발</p>
		                </li>
		                <li class="i3">
		                    <span>지정 과제 ②</span>
		                    <p>관광데이터 기반 SW융합제품 및 서비스 개발</p>
		                </li>
		            </ul>
		        </div>
		    </section>
		    <section class="bottomSection">
		        <div class="bottomSecInner">
                	<h2 class="center">PARTNERS</h2>
		            <ul class="families">
		                <li>
		                    <p>주최</p>
		                    <div class="logosContianer">
		                        <img src="/front_img/logos/logo1-1.png" alt="">
		                    </div>
		                </li>
		                <li>
		                    <p>후원</p>
		                    <div class="logosContianer">
		                        <img src="/front_img/logos/logo2-1.png" alt="">
		                        <img src="/front_img/logos/logo2-2.png" alt="">
		                        <img src="/front_img/logos/logo2-3.png" alt="">
		                        <img src="/front_img/logos/logo2-4.png" alt="">
		                        <img src="/front_img/logos/logo2-5.png" alt="">
		                        <img src="/front_img/logos/logo2-6.png" alt="">
		                        <img src="/front_img/logos/logo2-7.png" alt="">
		                        <img src="/front_img/logos/logo2-8.png" alt="">
		                        <img src="/front_img/logos/logo2-9.png" alt="">
		                        <img src="/front_img/logos/logo2-10.png" alt="">
		                        <img src="/front_img/logos/logo2-11.png" alt="">
		                        <img src="/front_img/logos/logo2-12.png" alt="">
		                    </div>
		                </li>
		                <li>
		                    <p>후원</p>
		                    <div class="logosContianer">
		                        <img src="/front_img/logos/logo3-1.png" alt="">
		                        <img src="/front_img/logos/logo3-2.png" alt="">
		                        <img src="/front_img/logos/logo3-3.png" alt="">
		                        <img src="/front_img/logos/logo3-4.png" alt="">
		                        <img src="/front_img/logos/logo3-5.png" alt="">
		                        <img src="/front_img/logos/logo3-6.png" alt="">
		                        <img src="/front_img/logos/logo3-7.png" alt="">
		                        <img src="/front_img/logos/logo3-8.png" alt="">
		                        <img src="/front_img/logos/logo3-9.png" alt="">
		                        <img src="/front_img/logos/logo3-10.png" alt="">
		                        <img src="/front_img/logos/logo3-11.png" alt="">
		                        <img src="/front_img/logos/logo3-12.png" alt="">
		                        <img src="/front_img/logos/logo3-13.png" alt="">
		                    </div>
		                </li>
		            </ul>
		        </div>
		    </section>
		    <section class="bottomSection">
		        <div class="bottomSecInner">
		            <h2><p>NOTICE</p><a href="#lnk"><img src="/front_img/arrow-white-lg.png" alt=""></a></h2>
		            <div class="noticeWrap">
		                <ul class="noticeList main">
		                    <li>
		                        <a href="#lnk">
		                            <p>SW융합 해커톤 대회 강원지역 참가팀 모집 공고</p>
		                            <span>2024.07.15 <img src="/front_img/arrow-white.png" alt=""></span>
		                        </a>
		                    </li>
		                </ul>
		            </div>
		        </div>
		    </section>
		</main>
        <%@include file="./include/footer.jsp" %>
        <script>
	        // Odometer 초기화
	        let odometer = new Odometer({
	            el: document.querySelector('.odometer'),
	            value: 40.000,
	            format: '(,ddd).ddd',
	            duration: 3000
	        });
	
	        // ScrollTrigger를 사용하여 section5에 도달했을 때 Odometer 값 변경
	        ScrollTrigger.create({
	            trigger: "#section2",
	            start: "top center",
	            onEnter: () => {
	                odometer.update(42.195);
	            },
	            once: true
	        });
	
	        //section2
	        const ani2 = gsap.timeline();
	        ani2.to("#section2 .t3", {autoAlpha: 0, duration: 10, y: 50}, "+=3")
	            .to("#section2 .t4", {autoAlpha: 0, duration: 10, y: 50}, "+=3")
	            .to("#section2 .t1", {x: 50, xPercent: 50, duration: 10}, "+=1")
	            .to("#section2 .t2", {x: 50, xPercent: -30, duration: 10}, "<")
	            .to("#section2 .t1", {x: -100, autoAlpha: 0, xPercent: 350, duration: 10}, "+=3")
	            .to("#section2 .t2", {x: -100, autoAlpha: 0, xPercent: -300, duration: 10}, "+=3")
	            .from("#section2 .t5", {x: -100, autoAlpha: 0, xPercent: 300, duration: 20}, "+=3")
	            .from("#section2 .t6", {x: -100, autoAlpha: 0, xPercent: -300, duration: 20}, "<")
	            .to({}, {duration: 30});
	
	        ScrollTrigger.create({
	            animation: ani2,
	            trigger: "#section2",
	            start: "top top", // 섹션 5가 뷰포트의 상단에 도달했을 때 시작
	            end: "+=6000",
	            scrub: true,
	            pin: true, 
	            anticipatePin: 1,
	            markers: false
	        });
	
	        //section3
	        const ani3 = gsap.timeline();
	        ani3.from("#section3 .t1", {autoAlpha:0, duration: 10, y: 50}, "+=1")
	            .from("#section3 .t2", {autoAlpha:0, duration: 10, y: 50}, "+=1")
	            .from("#section3 .i1", {y: -100, autoAlpha:0, duration: 10})
	            .from("#section3 .i2", {y: 100, autoAlpha:0, duration: 10})
	            .from("#section3 .i3", {y: -100, autoAlpha:0, duration: 10})
	            .from("#section3 .i4", {y: 100, autoAlpha:0, duration: 10})
	            .to({}, {duration: 30});
	
	        ScrollTrigger.create({
	            animation: ani3,
	            trigger: "#section3",
	            start: "top top",
	            end: "+=6000",
	            scrub: true,
	            pin: true, 
	            anticipatePin: 1,
	            markers: false
	        });
	
	        section4
	        const ani4 = gsap.timeline();
	        ani4.from("#section4 .t1", {autoAlpha:0, duration: 10, y: 50}, "+=1")
	            .from("#section4 .t2", {autoAlpha:0, duration: 10, y: 50}, "+=1")
	            .from("#section4 .i1", {y: 100, autoAlpha:0, duration: 10})
	            .from("#section4 .i2", {y: 100, autoAlpha:0, duration: 10})
	            .from("#section4 .i3", {y: 100, autoAlpha:0, duration: 10})
	            .to({}, {duration: 30});
	
	        ScrollTrigger.create({
	            animation: ani4,
	            trigger: "#section4",
	            start: "top top",
	            end: "+=6000",
	            scrub: true,
	            pin: true, 
	            anticipatePin: 1,
	            markers: false
	        });

    </script>
    </body>
</html>
