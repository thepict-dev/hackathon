<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="confirmWrapper">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <div class="confirmContainer">
            <h3 class="confirmTitle">정보 확인</h3>
            <ul class="tabNav app">
                <li class="active"><a href="#lnk">팀 정보</a></li>
                <li><a href="#lnk">팀장 정보</a></li>
                <li><a href="#lnk">팀원 정보</a></li>
            </ul>
            <div class="tabInner active">
                <p class="inputCaption">팀 정보</p>
                <ul class="teamInfo">
                    <li>
                        <p>참가구분</p>
                        <p id="final_assignment"></p>
                    </li>
                    <li>
                        <p>소속 지역</p>
                        <p id="final_local"></p>
                    </li>
                    <li>
                        <p>팀명</p>
                        <p id="final_title"></p>
                    </li>
                    <li>
                        <p>과제명</p>
                        <p id="final_assignment_name"></p>
                    </li>
                    <li>
                        <p>팀원 수</p>
                        <p id="final_team_cnt"></p>
                    </li>
                </ul>
            </div>
            <div class="tabInner">
                <p class="inputCaption">팀장 정보</p>
                <ul class="teamInfo">
                    <li>
                        <p>성명</p>
                        <p id="final_name"></p>
                    </li>
                    <li>
                        <p>생년월일</p>
                        <p id="final_birthday"></p>
                    </li>
                    <li>
                        <p>성별</p>
                        <p id="final_sex"></p>
                    </li>
                    <li>
                        <p>연락처</p>
                        <p id="final_mobile"></p>
                    </li>
                    <li>
                        <p>이메일주소</p>
                        <p id="final_email"></p>
                    </li>
                    <li>
                        <p>직장/학교명</p>
                        <p id="final_company"></p>
                    </li>
                    <li>
                        <p>부서/학과명</p>
                        <p id="final_depart"></p>
                    </li>
                    <li>
                        <p>단체티 사이즈</p>
                        <p id="final_shirt"></p>
                    </li>
                </ul>
                <p class="inputCaption confirmPrents">보호자 정보</p>
                <ul class="teamInfo">
                    <li>
                        <p>성명</p>
                        <p id="final_parent_name"></p>
                    </li>
                    <li>
                        <p>생년월일</p>
                        <p id="final_parent_birthday"></p>
                    </li>
                    <li>
                        <p>연락처</p>
                        <p id="final_parent_mobile"></p>
                    </li>
                    <li>
                        <p>관계</p>
                        <p id="final_parent_relation"></p>
                    </li>
                    <li>
                        <p>주소</p>
                        <p id="final_parent_address"></p>
                    </li>
                </ul>
	        </div>
            <div class="tabInner">
                <div class="swiper">
                    <div class="swiper-wrapper" id="final_div"></div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <div class="checkInput">
                <input type="checkbox" name="confirm" id="confirm" value="Y">
                <label for="confirm">모든 정보를 확인했습니다</label>
            </div>
            <div class="applyButton">
                <a href="#lnk" class="prevButton" onclick="fn_apply4_back()">이전으로</a>
                <a href="#lnk" class="nextButton" onclick="fn_submit()" id="confirm_btn">제출완료</a>
            </div>
        </div>
    </div>
</div>

<script>
	function fn_apply4_back(){
		$('#apply4').css("display", "flex");
		$('.confirmWrapper').hide();
	}
    $('#confirm').change(function() {
        if ($(this).is(':checked')) {
            $('#confirm_btn').addClass('active');
        } else {
            $('#confirm_btn').removeClass('active');
        }
    });
	function fn_submit(){
		var confirms = $("input[name='confirm']:checked").val()
		if(confirms != 'Y'){
			alert("모든정보 확인란을 체크해주세요.")
			$('#confirm').focus()
			return false
		}
		
		var text= "본선등록을 진행하시겠습니까?"
		if(confirm(text)){
			var arr = []
			
			var json = {}
			var name = $('#name_1').val()
			var birthday = $('#birthday_1').val()
			var sex = $("input[name='sex_1']:checked").val()
			var mobile = $('#mobile_1').val()
			var email = $('#email_1').val()
			var company = $('#company_1').val()
			var depart = $('#depart_1').val()
			var shirt = $("input[name='shirt_1']:checked").val()
			var parent_name = $('#parent_name_1').val() == undefined ? "" : $('#parent_name_1').val()
			var parent_birthday = $('#parent_birthday_1').val() == undefined ? "" : $('#parent_birthday_1').val()
			var parent_mobile = $('#parent_mobile_1').val() == undefined ? "" : $('#parent_mobile_1').val()
			var parent_relation = $("input[name='parent_relation_1']:checked").val() == undefined ? "" : $("input[name='parent_relation_1']:checked").val()
			var parent_relation_text = ""
			if(parent_relation == '기타') parent_relation_text = $('#parent_relation_text_1').val()
			else parent_relation_text = parent_relation
			
			if(parent_relation_text == null || parent_relation_text == undefined || parent_relation_text == '') parent_relation_text = ""
			var parent_address = $('#parent_address_1').val() == undefined ? "" : $('#parent_address_1').val()
			var parent_address2 = $('#parent_address2_1').val() == undefined ? "" : $('#parent_address2_1').val()
			
			json.name = name
			json.birthday = birthday
			json.sex = sex
			json.mobile = mobile
			json.email = email
			json.company = company
			json.depart = depart
			json.shirt = shirt
			json.parent_name = parent_name
			json.parent_birthday = parent_birthday
			json.parent_mobile = parent_mobile
			json.parent_relation = parent_relation_text 
			json.parent_address = parent_address
			json.parent_address2 = parent_address2
			arr.push(json)
			
			
			
			var team_cnt = Number($("input[name='team_cnt']:checked").val())
			if(team_cnt > 0 ){
				for(var i=2; i<team_cnt+1; i++){
					var json_won = {}
					
					var name = $('#name_'+i).val()
					var birthday = $('#birthday_'+i).val()
					var sex = $("input[name='sex_"+i+"']:checked").val()
					var mobile = $('#mobile_'+i).val()
					var email = $('#email_'+i).val()
					var company = $('#company_'+i).val()
					var depart = $('#depart_'+i).val()
					var shirt = $("input[name='shirt_"+i+"']:checked").val()
					
					var parent_name_sub = $('#parent_name_'+i).val() == undefined ? "" : $('#parent_name_'+i).val()
					var parent_birthday_sub = $('#parent_birthday_'+i).val() == undefined ? "" : $('#parent_birthday_'+i).val()
					var parent_mobile_sub = $('#parent_mobile_'+i).val() == undefined ? "" : $('#parent_mobile_'+i).val()
					var parent_relation_sub = $("input[name='parent_relation_"+i+"']:checked").val() == undefined ? "" : $("input[name='parent_relation_"+i+"']:checked").val()
							
					
					var parent_relation_text_sub = ""
					if(parent_relation_sub == '기타') parent_relation_text_sub = $('#parent_relation_text_'+i).val()
					else parent_relation_text_sub = parent_relation_sub
					
					if(parent_relation_text_sub == null || parent_relation_text_sub == undefined || parent_relation_text_sub == '') parent_relation_text_sub = ""
							
							
					var parent_address_1_sub = $('#parent_address_'+i).val() == undefined ? "" : $('#parent_address_'+i).val()
					var parent_address_2_sub = $('#parent_address2_'+i).val() == undefined ? "" : $('#parent_address2_'+i).val()
					
					
					json_won.name = name
					json_won.birthday = birthday
					json_won.sex = sex
					json_won.mobile = mobile
					json_won.email = email
					json_won.company = company
					json_won.depart = depart
					json_won.shirt = shirt
					json_won.parent_name = parent_name_sub
					json_won.parent_birthday = parent_birthday_sub
					json_won.parent_mobile = parent_mobile_sub
					json_won.parent_relation = parent_relation_text_sub
					json_won.parent_address = parent_address_1_sub
					json_won.parent_address2 = parent_address_2_sub
					
					arr.push(json_won)
				}
			}
			debugger
			var requestData = {
				assignment_id : $("input[name='assignment_id']:checked").val(),
				local : $("select[name=local]").val(),
				title : $('#title').val(),
				team_cnt : $("input[name='team_cnt']:checked").val(),
				assignment_name : $('#assignment_name').val(),
				keyword : $('#keyword').val(),
				person_info : arr
		    }
		 
			var form = $('#attach_file')[0].files[0];
			var formData = new FormData();
			formData.append('img', form);
			formData.append("request", new Blob([JSON.stringify(requestData)], {type: "application/json"}));
			
			
			$.ajax({
				url: '/register_insert.do',
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				success : function(result){
					alert("정상적으로 저장되었습니다.")
					window.location.reload()
					
				},
				error : function(err){
					alert("오류가 발생했습니다.\n관리자에게 문의해주세요")
					console.log(err)
				}
				
			});
		}
	
	}
	
</script>