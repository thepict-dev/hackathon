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
			<div class="contentsInner teams">
				<div class="linkTitle">
					<a href="/audit_lists.do"><img src="/front_img/audit/back.png" alt=""></a>
					<h3>
						<c:if test="${assignment_id eq '1' || assignment_id eq 1}">자유과제 디지털 기반 SW융합제품 또는 서비스 개발</c:if>
						<c:if test="${assignment_id eq '2' || assignment_id eq 2}">지정과제① 지역사회 현안해결을 위한 SW융합제품 및 서비스 개발</c:if>
						<c:if test="${assignment_id eq '3' || assignment_id eq 3}">지정과제② 관광데이터 기반 SW 융합제품 및 서비스 개발</c:if>
					</h3>
				</div>
				<h4><span>평가할 팀</span>을 선택해주세요</h4>
				<ul class="listHead">
					<li>순서</li>
					<li>구분</li>
					<li>지역</li>
					<li>제안명</li>
					<li>팀명</li>
					<li>평가점수</li>
				</ul>
				<ul class="listBody">
					<c:forEach var="team_list" items="${team_list}" varStatus="status">
						<li>
						    <a href="#lnk" onclick="fn_team_modal('${team_list.idx}', '${team_list.assignment_name}')">
								<p>${status.count}</p>
								<p class="grey">
									<c:if test="${assignment_id eq 1 || assignment_id eq '1'}">자유과제</c:if>
									<c:if test="${assignment_id eq 2 || assignment_id eq '2'}">지정과제①</c:if>
									<c:if test="${assignment_id eq 3 || assignment_id eq '3'}">지정과제②</c:if>
								</p>
								<p>강원</p>
								<p class="ellip">${team_list.assignment_name}</p>
								<p class="ellip">${team_list.title}</p>
								
								<c:if test="${team_list.point_1 + team_list.point_2 +team_list.point_3+team_list.point_4 eq 0}">
									<p class="nonScore">평가 미완료</p>
								</c:if>
								<c:if test="${team_list.point_1 + team_list.point_2 +team_list.point_3+team_list.point_4 > 0}">
									<p class="scored">${team_list.point_1 + team_list.point_2 +team_list.point_3+team_list.point_4}</p>
								</c:if>
						    </a>
						</li>
					</c:forEach>
				</ul>
				<div class="buttonsContainer">
				<!-- active -->
					<c:if test="${assignment_id eq '1' || assignment_id eq 1}">
						<a href="#lnk" onclick="assignment_send()" class="disable <c:if test="${subject1_remaincnt eq 0}">active</c:if>">심사 완료</a>
					</c:if>
					<c:if test="${assignment_id eq '2' || assignment_id eq 2}">
						<a href="#lnk" onclick="assignment_send()" class="disable <c:if test="${subject2_remaincnt eq 0}">active</c:if>">심사 완료</a>
					</c:if>
					<c:if test="${assignment_id eq '3' || assignment_id eq 3}">
						<a href="#lnk" onclick="assignment_send()" class="disable <c:if test="${subject3_remaincnt eq 0}">active</c:if>">심사 완료</a>
					</c:if>
				</div>
			</div>
		</div>
	    <!-- 여기 임포트 -->
	    <%@include file="./audit_modal.jsp" %>
	    
	    <div class="modalContainer" id="confirm_modal">
	        <div class="confirmInner">
	            <div class="confirmTextsWrapper">
	                <p>성공적으로 저장했습니다.</p>
	                <div class="confirmText">
	                    <p id="confirm_assignment"></p>
	                </div>
	            </div>
	            <div class="buttonsContainer">
	                <!-- active -->
	                <a href="#lnk" class="active" id="confirm_done">확인</a>
	            </div>
	        </div>
	    </div>
	    <input type="hidden" name="idx" id="idx">
	    <input type="hidden" name="txt_assignment_name" id="txt_assignment_name">
    </body>
    <script>
    	function assignment_send(){
    		if(confirm("해당 과제 평가를 완료하시겠습니까?\n페이지 이동 후 최종 제출 전까지 수정이 가능합니다.")){
    			window.location.href="/audit_lists.do"
    		}
    	}
    	
    	
    	function fn_team_modal(idx, assignment_name){
    		$('#idx').val(idx);
    		$('#assignment_name').text(assignment_name)
    		$('#txt_assignment_name').val(assignment_name)
    		var param ={
    			team_id : idx
    		}
    		$.ajax({
				url : "/get_judge_info.do"
				, type : "POST"
				, data : JSON.stringify(param)
				, contentType : "application/json"
				, dataType : "json"
				, success : function(data, status, xhr) {
					if(data.status != 'login'){
						window.location.href= "/audit_main.do"
					}
					else{
						//데이터 있을때 바인딩
						if(data.rst != undefined){
							$('#point_1').val(data.rst.point_1)
							$('#point_2').val(data.rst.point_2)
							$('#point_3').val(data.rst.point_3)
							$('#point_4').val(data.rst.point_4)
							point_sum()
							
							
					        $('#score_modal').css('display', 'flex');		
						}
						//없으면 공란으로 띄우고
						else{
							$('#score_modal').css('display', 'flex');
						}
					}
								
				}
				, error : function(xhr, status, error) {
					alert("불러오기 중 오류가 발생했습니다.\n관리자에게 문의해주세요.");
					console.log(xhr);
					console.log("에러")
				}
			});	
    	}

	    

	    // 최종확인 종료
	    $('#confirm_done').click(function(){
	        $('#confirm_modal').css('display', 'none');
	        window.location.reload();
	    });
	    
	    const input = document.querySelector('.tableWrapper table tbody tr td input');
	
	    input.addEventListener('input', function(e) {
	        this.value = this.value.replace(/[^0-9]/g, '');
	    });
	
	    const inputs = [
	        { id: 'point_1', max: 30 },
	        { id: 'point_2', max: 30 },
	        { id: 'point_3', max: 20 },
	        { id: 'point_4', max: 20 }
	    ];
	
	    inputs.forEach(input => {
	        const element = document.getElementById(input.id);
	        if (element) {
	            element.addEventListener('input', function() {
	                let value = parseInt(this.value);
	                if (isNaN(value)) {
	                    this.value = '';
	                } else if (value > input.max) {
	                    this.value = input.max;
	                } else if (value < 0) {
	                    this.value = 0;
	                }
	            });
	        }
	    });
	    
	    

    </script>
</html>
