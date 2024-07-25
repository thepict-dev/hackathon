<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="제11회 대한민국 SW융합 해커톤 대회"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
        <div class="subContainer">
	        <div class="subTop">
	            <h2>행사소개</h2>
	            <p class="pcText">디지털 시대의 새 지평을 열고픈<br>모든 이들에게 열려있습니다</p>
	            <p class="mbText">디지털 시대의<br>새 지평을 열고픈<br>모든 이들에게<br>열려있습니다</p>
	        </div>
	        <div class="subBottom">
	            <div class="subBottomInner">
	                <div class="introContainer">
	                    <ul class="posters">
	                        <li><img src="/front_img/poster1.png" alt=""></li>
	                        <li><img src="/front_img/poster2.png" alt=""></li>
	                        <li><img src="/front_img/poster3.png" alt=""></li>
	                    </ul>
	                    <ul class="introTexts">
	                        <li>
	                            <div class="textTop">
	                                <p>대회기간</p>
	                                <span>2024.8.23.(금)~25.(일)</span>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="textTop">
	                                <p>개최장소</p>
	                                <span>춘천 봄내체육관</span>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="textTop">
	                                <p>모집기간</p>
	                                <span>2024.6.21.(금)~7.26.(금)</span>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="textTop">
	                                <p>문의처</p>
	                                <span>대한민국 SW융합 해커톤 대회</span>
	                            </div>
	                            <div class="textBottom">
	                                <p><span>사무국</span>033-245-6548</p>
	                                <p><span>이메일</span>ellipse1229@gica.or.kr</p>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="textTop">
	                                <p>참가대상</p>
	                                <span>총 55개 팀 이내(팀당 2-5인 구성)</span>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="textTop">
	                                <p>참가자격</p>
	                                <span>만 15세 이상 중·고·대학생 및 일반인</span>
	                            </div>
	                        </li>
	                        <li>
	                            <div class="textTop">
	                                <p>참가주제</p>
	                                <span>디지털 시대 새 지평을 열다!</span>
	                            </div>
	                            <div class="textBottom">
	                                <p><span>자유과제</span>디지털 기반 sw융합제품 또는 서비스 개발</p>
	                                <p><span>지정과제①</span>지역사회 현안해결을 위한 sw융합제품 및 서비스 개발</p>
	                                <p><span>지정과제②</span>관광데이터 기반 sw융합제품 및 서비스 개발</p>
	                            </div>
	                        </li>
	                    </ul>
	                    <div class="location">
	                        <div class="subTitleContainer">
	                            <h3>오시는 길</h3>
	                            <p>
	                                <img src="/front_img/flag.png" alt="">
	                                <span>춘천 봄내체육관<span>강원특별자치도 춘천시 평화로 25</span></span>
	                            </p>
	                        </div>
	                        <div class="kakaoMap" id="map">
	                            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0d776bb34a08483e971b1a5e18e0b065&libraries=services"></script>
								<script>
									var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
								    mapOption = { 
								        center: new kakao.maps.LatLng('37.88136091123488', '127.71853333996056'), // 지도의 중심좌표
								        level: 3 // 지도의 확대 레벨
								    };
						
									var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
							
									// 마커가 표시될 위치입니다 
									var markerPosition  = new kakao.maps.LatLng('37.88136091123488', '127.71853333996056'); 
									// 마커를 생성합니다
									var marker = new kakao.maps.Marker({
									    position: markerPosition
									});
							
									// 마커가 지도 위에 표시되도록 설정합니다
									marker.setMap(map);
								
									var iwContent = '<div style="line-height:20px; width:180px; text-align:center">' + '춘천 봄내체육관' +'</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
					
									// 인포윈도우를 생성합니다
									var infowindow = new kakao.maps.InfoWindow({
									    content : iwContent
									});
									kakao.maps.event.addListener(marker, 'mouseover', function() {
									  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
									    infowindow.open(map, marker);
									});
								
								</script>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
        <%@include file="./include/footer.jsp" %>
    </body>
</html>
