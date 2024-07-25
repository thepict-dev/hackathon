<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<!DOCTYPE html>
<html lang="ko">
	<c:import url="./header.jsp">
    	<c:param name="pageTitle" value="투표테스트"/>
    </c:import>
    
    <body class="sb-nav-fixed">
        <div id="layoutSidenav">
			<div id="layoutSidenav_content">
				<main class="contents">
					<h2 class="contents-title">투표 테스트</h2>
					<div class="contents-box">
						<div class="card">
						    <div class="card-body">
						    	<div class="tbl-basic tbl-hover">
							        <table style="text-align : left">
							        	<colgroup>
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        		<col style="width:12.5%;">
							        	</colgroup>
							            <thead>
							                <tr class="thead">
							                    <th colspan="8">투표해주세요</th>
							                    
							                </tr>
							            </thead>
							            <tbody>
							                <tr>
						                    	<td><button type="button" onclick="javascript:board_delete('1')" class="btn-basic btn-fill btn-sm">개발팀</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('2')" class="btn-basic btn-fill btn-sm">경영지원팀</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('3')" class="btn-basic btn-fill btn-sm">메타버스팀</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('4')" class="btn-basic btn-fill btn-sm">실감미디어팀</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('5')" class="btn-basic btn-fill btn-sm">기획운영팀</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('6')" class="btn-basic btn-fill btn-sm">이디야커피</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('7')" class="btn-basic btn-fill btn-sm">콘텐츠사업팀</button></td>
						                    	<td><button type="button" onclick="javascript:board_delete('8')" class="btn-basic btn-fill btn-sm">대표이사실</button></td>
							                </tr>
							            </tbody>
						            </table>
				            	</div>
				            </div>
			            </div>
		            </div>
		            <!-- <div style="float : right; margin-right: 20%">
			            <button type="button" id="button1" onclick="board_list();">게시글 리스트</button>
		            </div> -->
				</main>
			</div>
		</div>
		<form action="" id="register" name="register" method="post" enctype="multipart/form-data">
			<input type='hidden' name="target_id" id="target_id" value='' />
		</form>
		<script>
			function board_delete(idx){
				var param = {
					target_id : idx
				}
				var text ="투표 하시겠습니까?";
				if(confirm (text)){
	
					$.ajax({
						url : "/vote/vote_save.do"
						, type : "POST"
						, data : JSON.stringify(param)
						, contentType : "application/json"
						, success : function(data, status, xhr) {
							
						},
						error : function(err){ 
							alert("에러가 발생했습니다.")
						}
					})
					
				}
			}


		</script>
            
		<script src="../../../../../js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/scripts.js"></script>
		<script src="../../../../../js/Chart.min.js" crossorigin="anonymous"></script>
		<script src="../../../../../js/simple-datatables@latest.js" crossorigin="anonymous"></script>
		
    </body>
</html>