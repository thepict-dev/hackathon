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
					<c:if test="${assignment_id eq '1' or assignment_id eq 1}">
						<a href="#lnk" onclick="assignment_send()" class="disable <c:if test="${subject1_remaincnt eq 0}">active</c:if>">심사 완료</a>
					</c:if>
					<c:if test="${assignment_id eq '1' or assignment_id eq 1}">
						<a href="#lnk" onclick="assignment_send()" class="disable <c:if test="${subject2_remaincnt eq 0}">active</c:if>">심사 완료</a>
					</c:if>
					<c:if test="${assignment_id eq '1' or assignment_id eq 3}">
						<a href="#lnk" onclick="assignment_send()" class="disable <c:if test="${subject3_remaincnt eq 0}">active</c:if>">심사 완료</a>
					</c:if>
				</div>
			</div>
		</div>
	    <div class="modalContainer" id="score_modal">
	        <div class="scoreContainer">
	            <form action="">
	                <h5 id="assignment_name">선박자동식별시스템(AIS)를 활용한 해양수질 시각화 서비스해양수질 시각화 서비스</h5>
	                <div class="tableWrapper">
	                    <table>
	                        <colgroup>
	                            <col width="13%" />
	                            <col width="42%" />
	                            <col width="23%" />
	                            <col width="22%" />
	                        </colgroup>
	                        <thead>
	                            <tr>
	                                <th>구분</th>
	                                <th>설명</th>
	                                <th>배점</th>
	                                <th>점수</th>
	                            </tr>
	                        </thead>
	                        <tbody>
	                            <tr>
	                                <td>사업화 가능성</td>
	                                <td>
	                                    <p><span>•</span> 결과물의 시장 경쟁력, 사업화 가능성</p>
	                                    <p><span>•</span> 사업계획의 타당성과 충실도</p>
	                                    <p><span>•</span> 결과물의 완성도</p>
	                                </td>
	                                <td>30</td>
	                                <td><input type="number" name="point_1" id="point_1" required placeholder="점수를 입력하세요"></td>
	                            </tr>
	                            <tr>
	                                <td>기술성</td>
	                                <td>
	                                    <p><span>•</span> 결과물의 기술적 가치</p>
	                                    <p><span>•</span> 결과물의 기술적 이해도</p>
	                                </td>
	                                <td>30</td>
	                                <td><input type="number" name="point_2" id="point_2" required placeholder="점수를 입력하세요"></td>
	                            </tr>
	                            <tr>
	                                <td>독창성</td>
	                                <td>
	                                    <p><span>•</span> 아이디어의 독창성과 창의성, 참신성</p>
	                                    <p><span>•</span> 기존제품(기술, 서비스 등)과의 차별성</p>
	                                </td>
	                                <td>20</td>
	                                <td><input type="number" name="point_3" id="point_3" required placeholder="점수를 입력하세요"></td>
	                            </tr>
	                            <tr>
	                                <td>사업화 가능성</td>
	                                <td>
	                                    <p><span>•</span> 대회 취지, 주제와의 적합성</p>
	                                </td>
	                                <td>20</td>
	                                <td><input type="number" name="point_4" id="point_4" required placeholder="점수를 입력하세요"></td>
	                            </tr>
	                            <tr>
	                                <td colspan="3" style="color: var(--color-green); text-align: center;">합계</td>
	                                <td><input type="number" name="whole_score" id="whole_score" value="" readonly style="color: var(--color-green);"></td>
	                            </tr>
	                        </tbody>
	                    </table>
	                </div>
	                <div class="buttonsContainer double">
	                    <a href="#lnk" id="close_score">닫기</a>
	                    <!-- active -->
	                    <a href="#lnk" class="disable active" id="submit_score">제출하기</a>
	                </div>
	            </form>
	        </div>
	    </div>
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
    	function point_sum(){
    		var point_1 = Number($('#point_1').val())
	        var point_2 = Number($('#point_2').val())
	        var point_3 = Number($('#point_3').val())
	        var point_4 = Number($('#point_4').val())
	        $('#whole_score').val(point_1 + point_2 + point_3 + point_4)
    	}
    	function point_reset(){
    		$('#point_1').val("")
	    	$('#point_2').val("")
	    	$('#point_3').val("")
	    	$('#point_4').val("")
	    	$('#whole_score').val("")
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

	    // 체점 모달 -> 확인 모달 종료 & 열기
	    $('#close_score').click(function() {
	    	if(confirm("입력한 데이터는 저장되지 않고 리스트로 돌아갑니다.")){
	    		point_reset()
	    		$('#score_modal').css('display', 'none');	
	    	}
	    });
	    
	    $('#submit_score').click(function() {
	    	if(confirm("입력을 완료 하시겠습니까?")){
	    		//벨리데이션 체크 해서 입력안된값 체크
	    		var point_1 = $('#point_1').val()
	    		var point_2 = $('#point_2').val()
	    		var point_3 = $('#point_3').val()
	    		var point_4 = $('#point_4').val()
	    		
	    		if(point_1 == '' || point_1 == null || point_1 == undefined){
	    			alert("사업화 가능성 점수를 확인해주세요.")
	    			$('#point_1').focus()
	    			return false;
	    		}
	    		if(point_2 == '' || point_2 == null || point_2 == undefined){
	    			alert("기술성 점수를 확인해주세요.")
	    			$('#point_2').focus()
	    			return false;
	    		}
	    		if(point_3 == '' || point_3 == null || point_3 == undefined){
	    			alert("독창성 점수를 확인해주세요.")
	    			$('#point_3').focus()
	    			return false;
	    		}
	    		if(point_4 == '' || point_4 == null || point_4 == undefined){
	    			alert("적합성 점수를 확인해주세요.")
	    			$('#point_4').focus()
	    			return false;
	    		}
	    		var param ={
	    			team_id : $('#idx').val(),
	    			point_1 : point_1,
	    			point_2 : point_2,
	    			point_3 : point_3,
	    			point_4 : point_4
	    		}
	    		$.ajax({
					url : "/get_judge_save.do"
					, type : "POST"
					, data : JSON.stringify(param)
					, contentType : "application/json"
					, dataType : "json"
					, success : function(data, status, xhr) {
						if(data.status != 'login'){
							window.location.href= "/audit_main.do"
						}
						else{
							if(data.rst != undefined && data.rst == 'Y'){
								$('#score_modal').css('display', 'none');
								$('#confirm_assignment').text($('#txt_assignment_name').val())
						    	$('#confirm_modal').css('display', 'flex');
						    	point_reset()
							}
							else{
								alert("데이터 저장 중 오류가 발생했습니다.\n관리자에게 문의해주세요.");
								$('#score_modal').css('display', 'none');
							}
						}
					}
					, error : function(xhr, status, error) {
						alert("데이터 저장 중 오류가 발생했습니다.\n관리자에게 문의해주세요.");
						console.log(xhr);
						console.log("에러")
					}
				});	
	    	}
	    });

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
	    
	    function go_list(){
	        if(confirm("창을 닫으면 입력한 정보는 저장되지 않습니다.")){
	            window.location.reload()
	        }
	    }
	
	    $('[id^="point_"]').on('input', function(e) {
	    	point_sum()
	    })
	    
	    $(document).ready(function(){
	    	point_sum()
	    });

    </script>
</html>
