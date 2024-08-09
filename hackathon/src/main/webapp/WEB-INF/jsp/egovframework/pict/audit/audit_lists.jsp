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
	    <div class="modalContainer" id="sign_modal">
	        <form action="" class="signInner">
	            <div class="finalTitles">
	                <h4>최종 제출 이후 수정이 불가합니다.</h4>
	                <p>최종 제출을 원하신다면 아래 정보를<br>확인하신 후 ‘최종제출’ 버튼을 눌러주세요.</p>
	            </div>
	            <div class="inputsContainer">
	                <div class="inputBox">
	                    <p>이름*</p>
	                    <input type="text" name="judge_name" id="judge_name" placeholder="이름을 입력하세요">
	                </div>
	                <div class="inputBox">
	                    <p>연락처*</p>
	                    <input type="text" name="judge_mobile" id="judge_mobile" placeholder="연락처를 입력하세요">
	                </div>
	            </div>
	            <div class="checkInputContainer">
	                <div class="checkInputBox">
	                    <input type="checkbox" name="check_point" id="check_point">
	                    <label for="check_point">모든 팀의 점수 입력을 완료 했습니다</label>
	                </div>
	                <div class="checkInputBox">
	                    <input type="checkbox" name="check_info" id="check_info">
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
	                <a href="#lnk" id="save">저장</a>
	            </div>
	        </form>
	    </div>
	    <script>
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
	        });
	
	        // 최종 제출
	        $('#submit_all').click(function(){
	            if (isCanvasBlank()) {
	                alert("서명을 해주세요.");
	            } else {
	                const dataURL = getSignatureData();
	                // 여기에 서버로 데이터를 전송하는 코드를 추가할 수 있습니다.
	                console.log("서명 데이터:", dataURL);
	                alert("서명이 제출되었습니다.");
	                $('#sign_modal').css('display', 'none');
	            }
	        });
	
	        // 최종 모달 열기
	        $('#all_done_button').click(function(){
	            $('#final_modal').css('display', 'flex');
	        });
	
	        // 최종모달 닫기
	        $('#close_final').click(function() {
	            $('#final_modal').css('display', 'none');
	        });
	
	        // 최종닫고 서명열기
	        $('#final_submit').click(function() {
	            $('#final_modal').css('display', 'none');
	            $('#sign_modal').css('display', 'flex');
	            resizeCanvas(); // 모달이 열릴 때 캔버스 크기 조정
	        });
	
	        // 서명 닫기
	        $('#close_sign').click(function(){
	            $('#sign_modal').css('display', 'none');
	        });
	    </script>
	</body>
</html>
