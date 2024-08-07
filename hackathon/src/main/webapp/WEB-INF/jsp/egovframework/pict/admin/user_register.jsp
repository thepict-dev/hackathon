<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/javascript" src="/js/HuskyEZCreator.js" charset="utf-8"></script>

<!DOCTYPE html>
<html lang="ko">
<c:import url="./header.jsp">
	<c:param name="pageTitle" value="참가자 등록" />
</c:import>
<body class="sb-nav-fixed">
	<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
		<%@include file="./navigation.jsp"%>
		<div id="layoutSidenav">
			<div id="layoutSidenav_nav">
				<%@include file="./gnb.jsp"%>
			</div>
			<div id="layoutSidenav_content">
				<main class="contents">
					<h2 class="contents-title">참가자 등록</h2>
					<div class="contents-box">
						<div class="card">
							<div class="card-body">
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">이름</label>
										<div class="input-box">
											<input type="text" id="name" name="name" value="${pictVO.name}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">생년월일</label>
										<div class="input-box">
											<input type="text" id="birthday" name="birthday" value="${pictVO.birthday}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">성별</label>
										<select id="sex" name="sex" class="input opt-max-width-300">
											<option value="1" <c:if test="${'1' eq pictVO.sex}"> selected</c:if> >남</option>
											<option value="2" <c:if test="${'2' eq pictVO.sex}"> selected</c:if> >여</option>
										</select>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">연락처</label>
										<div class="input-box">
											<input type="text" id="mobile" name="mobile" value="${pictVO.mobile}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">이메일</label>
										<div class="input-box">
											<input type="text" id="email" name="email" value="${pictVO.email}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">직장/학교</label>
										<div class="input-box">
											<input type="text" id="company" name="company" value="${pictVO.company}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">소속</label>
										<div class="input-box">
											<input type="text" id="depart" name="depart" value="${pictVO.depart}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">셔츠</label>
										<select id="shirt" name="shirt" class="input opt-max-width-300">
											<option value="S" <c:if test="${'S' eq pictVO.shirt}"> selected</c:if> >S</option>
											<option value="M" <c:if test="${'M' eq pictVO.shirt}"> selected</c:if> >M</option>
											<option value="L" <c:if test="${'L' eq pictVO.shirt}"> selected</c:if> >L</option>
											<option value="XL" <c:if test="${'XL' eq pictVO.shirt}"> selected</c:if> >XL</option>
											<option value="2XL" <c:if test="${'2XL' eq pictVO.shirt}"> selected</c:if> >2XL</option>
											<option value="3XL" <c:if test="${'3XL' eq pictVO.shirt}"> selected</c:if> >3XL</option>
										</select>
									</div>
								</div>
								
								
								
								
								
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">보호자 성명</label>
										<div class="input-box">
											<input type="text" id="parent_name" name="parent_name" value="${pictVO.parent_name}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">보호자 생년월일</label>
										<div class="input-box">
											<input type="text" id="parent_birthday" name="parent_birthday" value="${pictVO.parent_birthday}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">보호자 연락처</label>
										<div class="input-box">
											<input type="text" id="parent_mobile" name="parent_mobile" value="${pictVO.parent_mobile}" class="input opt-max-width-200">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">보호자관계</label>
										<select id="parent_relation" name="parent_relation" class="input opt-max-width-300">
											<option value="부모" <c:if test="${'부모' eq pictVO.parent_relation}"> selected</c:if> >부모</option>
											<option value="조부모" <c:if test="${'조부모' eq pictVO.parent_relation}"> selected</c:if> >조부모</option>
											<option value="기타" <c:if test="${'기타' eq pictVO.parent_relation}"> selected</c:if> >기타</option>
										</select>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">보호자 주소</label>
										<div class="input-box">
											<input type="text" id="parent_address" name="parent_address" value="${pictVO.parent_address}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								<div class="write-box">
									<div class="write-item">
										<label for="title" class="title">보호자 주소(상세)</label>
										<div class="input-box">
											<input type="text" id="parent_address2" name="parent_address2" value="${pictVO.parent_address2}" class="input opt-max-width-500">
										</div>
									</div>
								</div>
								
									
								<div class="btn-box">
									<c:if test="${pictVO.saveType eq 'insert'}">
										<button type="button" onclick="button1_click();" class="btn-basic btn-primary btn-sm">등록</button>
									</c:if>
									<c:if test="${pictVO.saveType ne 'insert'}">
										<button type="button" onclick="button1_click();" class="btn-basic btn-primary btn-sm">수정</button>
									</c:if>
						        	<button type="button" onclick="javascript:board_list();" class="btn-basic btn-common btn-sm">목록보기</button>    
					            </div>
							</div>
						</div>
		            </div>
				</main>
			</div>
		</div>
		<input type='hidden' name="saveType" id="saveType" value='${pictVO.saveType}' /> 
		<input type='hidden' name="idx" id="idx" value='${pictVO.idx}' /> 
		<input type='hidden' name="use_at" id="use_at" value='${pictVO.use_at}' />
		<input type='hidden' name="type" id="type" value='' />
		<input type='hidden' name="del_idx" id="del_idx" value='' />
		
	</form>
	
	<script>


		function board_list() {
			location.href = "/user/user_list.do";
		}
		function button1_click() {
			
			var text = "등록하시겠습니까?";
			if (saveType == 'update') {
				text = "수정하시겠습니까?"
			}

			if (confirm(text)) {
				$("#register").attr("action", "/user/user_save.do");
				$("#register").submit();
			}
		}
		
	</script>
	<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
	<script src="../../../../../js/scripts.js"></script>
	<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
	<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>

</body>
</html>