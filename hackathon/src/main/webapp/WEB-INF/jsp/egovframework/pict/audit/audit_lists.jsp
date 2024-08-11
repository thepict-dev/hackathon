<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
	pageContext.setAttribute("user_idx", session.getAttribute("user_idx"));
	pageContext.setAttribute("name", session.getAttribute("name"));
	pageContext.setAttribute("company", session.getAttribute("company"));
	pageContext.setAttribute("mobile", session.getAttribute("mobile"));
%>
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
		                <li class="
		                	<c:if test="${arr eq '1' || arr eq 1}"><c:if test="${subject1_remaincnt eq 0}"> finish</c:if></c:if>
		                	<c:if test="${arr eq '2' || arr eq 2}"><c:if test="${subject2_remaincnt eq 0}"> finish</c:if></c:if>
		                	<c:if test="${arr eq '3' || arr eq 3}"><c:if test="${subject3_remaincnt eq 0}"> finish</c:if></c:if>
		                	"
		                >
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
	            	<c:forEach var="arr" items="${arr}" varStatus="status">
						<c:if test="${arr eq '1' || arr eq 1}"><li><a href="#lnk">자유과제</a></li></c:if>
						<c:if test="${arr eq '2' || arr eq 2}"><li><a href="#lnk">지정과제①</a></li></c:if>
						<c:if test="${arr eq '3' || arr eq 3}"><li><a href="#lnk">지정과제②</a></li></c:if>
	                </c:forEach>
	            </ul>
	            <div id="modal_list"></div>
	            <div class="buttonsContainer double finals">
	                <a href="#lnk" id="close_final">닫기</a>
	                <!-- active -->
	                <a href="#lnk" class="active" id="final_submit">최종제출</a>
	            </div>
	        </form>
	    </div>
	    <div class="modalContainer" id="sign_modal">
	        <form action="" class="signInner">
	            <div class="finalTitles">
	                <h4>최종 제출 이후 수정이 불가합니다.</h4>
	                <p>최종 제출을 원하신다면 아래 정보를<br>확인하신 후 ‘최종제출’ 버튼을 눌러주세요.</p>
	            </div>
	            <div class="inputsContainer">
	                <div class="inputBox">
	                    <p>이름*</p>
	                    <input type="text" name="judge_name" id="judge_name" placeholder="이름을 입력하세요" value="${name}">
	                </div>
	                <div class="inputBox">
	                    <p>연락처*</p>
	                    <input type="text" name="judge_mobile" id="judge_mobile" placeholder="연락처를 입력하세요" value="${mobile}">
	                </div>
	            </div>
	            <div class="checkInputContainer">
	                <div class="checkInputBox">
	                    <input type="checkbox" name="check_point" id="check_point" value="Y" onchange="fn_over()">
	                    <label for="check_point">모든 팀의 점수 입력을 완료 했습니다</label>
	                </div>
	                <div class="checkInputBox">
	                    <input type="checkbox" name="check_info" id="check_info" value="Y" onchange="fn_over()">
	                    <label for="check_info">나의 정보를 확인했습니다</label>
	                </div>
	            </div>
	            <div id="signCanvase">
	                <canvas id="canvas" width="100%" height="225px"></canvas>
	                <div id="placeholderText">서명을 그려주세요</div>
	            </div>
	            <div class="buttonsContainer double erase" style="display: none;">
	                <a href="#lnk" id="erase">모두 지우기</a>
	            </div>
	            <div class="buttonsContainer double sign">
	                <a href="#lnk" id="close_sign">닫기</a>
	                <!-- active -->
	                <a href="#lnk" class="disable" id="submit_all">최종제출</a>
	                <!-- <a href="#lnk" id="save">저장</a> -->
	            </div>
	        </form>
	    </div>
	    <input type="hidden" name="idx" id="idx">
	    <input type="hidden" name="txt_assignment_name" id="txt_assignment_name">
	    <%@include file="./audit_modal.jsp" %>
	    <script>
	    	
	    	function get_team_list_ajax(){
	    		$('#modal_list').children().remove()
	    		var param ={}
	        	$.ajax({
					url : "/get_team_list_ajax.do"
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
							//데이터 있을때 바인딩
							if(data.list != undefined && data.list.length > 0){
								var html = ""
								var main_arr = data.arr
								var first = "active"
									for(var i=0; i<main_arr.length; i++){
										if(i != 0) first = ""
										
										html += 
							            '<div class="tabInner '+first+'">'+
										'<div class="scroll">'+
							            '<ul class="listHead finals">'+
				                        '<li>순서</li>'+
				                        '<li>지역</li>'+
				                        '<li>제안명</li>'+
				                        '<li>팀명</li>'+
				                        '<li>평가점수</li>'+
					                    '</ul>'+
							            '<ul class="listBody finals">'
						            
					                    for(var j=0; j<data.list.length; j++){
					                    	if(main_arr[i] == data.list[j].assignment_id){
					                    		
					                    		html +=
								                    '<li>'+
								                    '<a href="#lnk" onclick="fn_team_modal('+data.list[j].idx+', \''+data.list[j].assignment_name+'\')">'+
					                                '<p>'+j+1+'</p>'+
					                                '<p>'+data.list[j].local+'</p>'+
					                                '<p class="ellip">'+data.list[j].assignment_name+'</p>'+
					                                '<p class="ellip">'+data.list[j].title+'</p>'+
					                                '<p class="scored">'+data.list[j].point_sum+'</p>'+
						                            '</a>'+
							                        '</li>'
					                    	}
							            }        
						                        
										html +='</ul>'+
						                 '</div>'+
						                 '</div>'
						                 
									}
									$('#modal_list').append(html)
									$('#final_modal').css('display', 'flex');
									//탭
							        const tabItem = document.querySelectorAll('.tabNav li');
							        const tabInner = document.querySelectorAll('.tabInner');

							        function activateTab(items, index) {
							            tabInner.forEach((inner) => {
							                inner.classList.remove('active');
							            });

							            items.forEach((item) => {
							                item.classList.remove('active');
							            });

							            items[index].classList.add('active');
							            tabInner[index].classList.add('active');
							        }

							        tabItem.forEach((tab, idx) => {
							            tab.addEventListener('click', function() {
							                activateTab(tabItem, idx);
							            });
							        });
							}
							//없으면 공란으로 띄우고
							else{
								
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

	        const canvas = document.getElementById('canvas');
	        const context = canvas.getContext('2d');
	        const placeholderText = document.getElementById('placeholderText');
	        const eraseButton = document.querySelector('.buttonsContainer.double.erase');
	        let isDrawing = false;
	        let hasDrawn = false;
	
	        // 캔버스 크기 조정 함수
	        function resizeCanvas() {
	            const container = document.getElementById('signCanvase');
	            const rect = container.getBoundingClientRect();
	            
	            canvas.style.width = `${rect.width}px`;
	            canvas.style.height = `${rect.height}px`;
	            
	            const dpr = window.devicePixelRatio || 1;
	            canvas.width = rect.width * dpr;
	            canvas.height = rect.height * dpr;
	            
	            context.scale(dpr, dpr);
	            context.clearRect(0, 0, canvas.width, canvas.height);
	            context.lineWidth = 2;
	            context.lineCap = 'round';
	            context.strokeStyle = 'white';
	        }
	
	        // 캔버스 초기화 함수
	        function initCanvas() {
	            resizeCanvas();
	            window.addEventListener('resize', resizeCanvas);
	        }
	
	        // 그리기 시작
	        function startDrawing(event) {
	            isDrawing = true;
	            hasDrawn = true;
	            placeholderText.style.display = 'none';
	            eraseButton.style.display = 'flex';
	            draw(event);
	        }
	        function fn_over(){
	    		var point = $('#check_point').is(':checked');
	    		var info = $('#check_info').is(':checked');
	    		if(point && info && !isCanvasBlank()){
	    			$('#submit_all').addClass("active")
	    		}
	    		else{
	    			$('#submit_all').removeClass("active")
	    		}
	    	}
	
	        // 그리기
	        function draw(event) {
	            if (!isDrawing) return;
	            
	            const rect = canvas.getBoundingClientRect();
	            const x = event.clientX - rect.left;
	            const y = event.clientY - rect.top;
	            
	            context.lineTo(x, y);
	            context.stroke();
	            context.beginPath();
	            context.moveTo(x, y);
	        }
	
	        // 그리기 종료
	        function endDrawing() {
	            isDrawing = false;
	            context.beginPath();
	            var point = $('#check_point').is(':checked');
	    		var info = $('#check_info').is(':checked');
	    		if(point && info && !isCanvasBlank()){
	    			$('#submit_all').addClass("active")
	    		}
	    		else{
	    			$('#submit_all').removeClass("active")
	    		}
	        }
	
	        // 터치 이벤트 처리
	        function handleTouch(event) {
	            event.preventDefault();
	            const touch = event.touches[0];
	            const mouseEvent = new MouseEvent(event.type === 'touchstart' ? 'mousedown' : 'mousemove', {
	                clientX: touch.clientX,
	                clientY: touch.clientY
	            });
	            canvas.dispatchEvent(mouseEvent);
	        }
	
	        // 지우기 이벤트
	        function eraseCanvas() {
	            context.clearRect(0, 0, canvas.width, canvas.height);
	            hasDrawn = false;
	            placeholderText.style.display = 'block';
	            eraseButton.style.display = 'none';
	            
	            var point = $('#check_point').is(':checked');
	    		var info = $('#check_info').is(':checked');
	    		
	    		if(point && info && !isCanvasBlank()){
	    			$('#submit_all').addClass("active")
	    		}
	    		else{
	    			$('#submit_all').removeClass("active")
	    		}
	            
	        }
	
	        // 서명 데이터 변환 함수
	        function getSignatureData() {
	            const tempCanvas = document.createElement('canvas');
	            const tempCtx = tempCanvas.getContext('2d');
	            tempCanvas.width = canvas.width;
	            tempCanvas.height = canvas.height;
	
	            // 흰색 배경 그리기
	            tempCtx.fillStyle = 'white';
	            tempCtx.fillRect(0, 0, tempCanvas.width, tempCanvas.height);
	
	            // 원본 캔버스의 데이터 가져오기
	            const imageData = context.getImageData(0, 0, canvas.width, canvas.height);
	            const data = imageData.data;
	
	            // 픽셀 데이터 변환 (흰색을 검정색으로)
	            for (let i = 0; i < data.length; i += 4) {
	                if (data[i] === 255 && data[i + 1] === 255 && data[i + 2] === 255) {
	                    data[i] = 0;
	                    data[i + 1] = 0;
	                    data[i + 2] = 0;
	                }
	            }
	
	            // 변환된 이미지 데이터를 임시 캔버스에 그리기
	            tempCtx.putImageData(imageData, 0, 0);
	
	            return tempCanvas.toDataURL('image/png');
	        }
	
	        // 캔버스가 비어있는지 확인하는 함수
	        function isCanvasBlank() {
	            return !hasDrawn;
	        }
	
	        // 이벤트 리스너 등록
	        canvas.addEventListener('mousedown', startDrawing);
	        canvas.addEventListener('mousemove', draw);
	        canvas.addEventListener('mouseup', endDrawing);
	        canvas.addEventListener('mouseout', endDrawing);
	        canvas.addEventListener('touchstart', handleTouch);
	        canvas.addEventListener('touchmove', handleTouch);
	        canvas.addEventListener('touchend', endDrawing);
	
	        eraseButton.querySelector('#erase').addEventListener('click', eraseCanvas);
	
	        // 캔버스 초기화
	        initCanvas();
	
	        // 서명 저장
	        $('#save').click(function(){
	        	/*
	            if (isCanvasBlank()) {
	                alert("서명을 해주세요.");
	            } else {
	                const dataURL = getSignatureData();
	                const link = document.createElement('a');
	                link.href = dataURL;
	                link.download = "signature.png";
	                document.body.appendChild(link);
	                link.click();
	                document.body.removeChild(link);
	            }
	        	*/
	        });
	
	        // 최종 제출
	        $('#submit_all').click(function(){
	        	if(confirm("최종 제출 후에는 심사정보를 수정할 수 없습니다.\n최종 제출 하시겠습니까?")){
	                var dataURL = getSignatureData();
	        	
		        	var param ={
		    			file_url : dataURL
		    		}
		    		$.ajax({
						url : "/judge_over.do"
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
								if(data.rst != undefined && data.rst == 'Y'){
									alert("최종제출이 완료되었습니다.");
									$('#sign_modal').css('display', 'none');		
								}
								//없으면 공란으로 띄우고
								else{
									
								}
							}
										
						}
						, error : function(xhr, status, error) {
							alert("데이터 처리 중 오류가 발생했습니다.\n관리자에게 문의해주세요.");
							console.log(xhr);
							console.log("에러")
						}
					});	
	        	}
	        	
	        });
	
	        // 최종 모달 열기
	        $('#all_done_button').click(function(){
	        	
	        	get_team_list_ajax()
	        });
	
	        // 최종모달 닫기
	        $('#close_final').click(function() {
	            $('#final_modal').css('display', 'none');
	        });
	
	        // 최종닫고 서명열기
	        $('#final_submit').click(function() {
	        	
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
	    					$('#final_modal').css('display', 'none');
	    		            $('#sign_modal').css('display', 'flex');
	    		            resizeCanvas(); // 모달이 열릴 때 캔버스 크기 조정			
	    				}
	    			}
	        	})
	        });
	
	        // 서명 닫기
	        $('#close_sign').click(function(){
	            $('#sign_modal').css('display', 'none');
	        });
	        
	      	
	    </script>
	</body>
</html>
