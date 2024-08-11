<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
<script>
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
	// 체점 모달 -> 확인 모달 종료 & 열기
    $('#close_score').click(function() {
    	if(confirm("입력한 데이터는 저장되지 않고 리스트로 돌아갑니다.")){
    		point_reset()
    		$('#score_modal').css('display', 'none');	
    	}
    });
    
    $('#submit_score').click(function() {
    	var params = {}
    	$.ajax({
			url : "/is_over.do"
			, type : "POST"
			, contentType : "application/json"
			, data : JSON.stringify(params)
			, dataType : "json"
			, success : function(data, status, xhr) {
				if(data.rst == 'Y'){
					alert("최종 제출 후에는 심사정보 수정이 불가합니다.")
					return false;
				}
				else{
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
							, async : true
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
								    	var page = window.location.pathname;
								    	
								    	//만약 과제리스트에서 했으면 ajax 다시 그려주기
								    	if(page == '/audit_lists.do'){
								    		get_team_list_ajax()
								    	}
								    	
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
				}
			}
			, error : function(xhr, status, error) {
				console.log(xhr);
				console.log("에러")
			}
		});	
    	
    	
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