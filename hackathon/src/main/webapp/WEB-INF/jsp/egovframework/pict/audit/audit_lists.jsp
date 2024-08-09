<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="ko">
	<c:import url="./include/head.jsp">
    	<c:param name="pageTitle" value="제11회 대한민국 SW융합 해커톤 대회 심사플랫폼"/>
    </c:import>
    <body>
        <%@include file="./include/header.jsp" %>
        <c:import url="./include/lnb.jsp">
	    	<c:param name="whole_cnt" value="${whole_cnt}"/>
	    	<c:param name="remain_cnt" value="${remain_cnt}"/>
	    </c:import>
	    <div class="contentsContainer">
	        <div class="contentsInner">
	            <h3>심사 과제를 선택하세요</h3>
	            <ul class="auditList">
	            	<c:forEach var="arr" items="${arr}" varStatus="status">
		                <li>
		                    <a href="/audit_team_list.do?assignment_id=${arr}">
		                        <div class="auditListTitle">
		                            <span>0${status.count}</span>
		                            <p>
		                            	<c:if test="${arr eq '1' || arr eq 1}">자유과제 디지털 기반 SW융합제품 또는 서비스 개발</c:if>
		                            	<c:if test="${arr eq '2' || arr eq 2}">지정과제① 지역사회 현안해결을 위한 SW융합제품 및 서비스 개발</c:if>
		                            	<c:if test="${arr eq '3' || arr eq 3}">지정과제② 관광데이터 기반 SW 융합제품 및 서비스 개발</c:if>
	                            	</p>
		                        </div>
		                        <c:if test="${arr eq '1'}">
		                        	<p class="count">${subject1_cnt - subject1_remaincnt}/${subject1_cnt}<span>완료</span></p>	
		                        </c:if>
		                        <c:if test="${arr eq '2'}">
		                        	<p class="count">${subject2_cnt - subject2_remaincnt}/${subject2_cnt}<span>완료</span></p>	
		                        </c:if>
		                        <c:if test="${arr eq '3'}">
		                        	<p class="count">${subject3_cnt - subject3_remaincnt}/${subject3_cnt}<span>완료</span></p>	
		                        </c:if>
		                        
		                    </a>
		                </li>
	                </c:forEach>
	            </ul>
	            <div class="buttonsContainer max">
	                <!-- active -->
	                <a href="#lnk" class="disable <c:if test="${remain_cnt eq 0}">active</c:if>"  id="all_done_button">모든 심사 완료</a>
	            </div>
	        </div>
	    </div>
	    <div class="modalContainer" id="final_modal">
	        <form action="" class="finalInner">
	            <div class="finalTitles">
	                <h4>최종 제출 이후 수정이 불가합니다.</h4>
	                <p>최종 제출을 원하신다면 아래 정보를<br>확인하신 후 ‘최종제출’ 버튼을 눌러주세요.</p>
	            </div>
	            <ul class="tabNav">
	                <li class="active"><a href="#lnk">자유과제</a></li>
	                <li><a href="#lnk">지정과제①</a></li>
	                <li><a href="#lnk">지정과제②</a></li>
	            </ul>
	            <div class="tabInner active">
	                <div class="scroll">
	                    <ul class="listHead finals">
	                        <li>순서</li>
	                        <li>지역</li>
	                        <li>제안명</li>
	                        <li>팀명</li>
	                        <li>평가점수</li>
	                    </ul>
	                    <ul class="listBody finals">
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                        <li>
	                            <a href="#lnk">
	                                <p>01</p>
	                                <p>강원</p>
	                                <p class="ellip">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</p>
	                                <p class="ellip">황천길 싫어요</p>
	                                <p class="scored">70</p>
	                            </a>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	            <div class="tabInner">
	
	            </div>
	            <div class="tabInner">
	
	            </div>
	            <div class="buttonsContainer double finals">
	                <a href="#lnk" id="close_final">닫기</a>
	                <!-- active -->
	                <a href="#lnk" class="active" id="final_submit">최종제출</a>
	            </div>
	        </form>
	    </div>
    </body>
    <script>
	    // 체점 모달 열기
	    $('#all_done_button').click(function(){
	        $('#final_modal').css('display', 'flex');
	    });
	    // 체점 모달 -> 확인 모달 종료 & 열기
	    $('#close_final').click(function() {
	        $('#final_modal').css('display', 'none');
	    });
	    $('#final_submit').click(function() {
	        if (!$(this).css('display', 'none')) {
	            // 추가될 사인모달
	            // $('#sign_modal').css('display', 'flex');
	        }
	    });
    
    </script>
</html>
