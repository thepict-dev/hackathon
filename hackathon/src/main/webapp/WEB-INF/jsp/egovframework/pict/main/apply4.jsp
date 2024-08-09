<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="applyWrapper" id="apply4">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <form action="" class="appBottom">
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">서류 제출</h3>
                <div class="inputContainer">
                    <div class="inputBox">
                        <p class="inputCaption mb24">첨부파일</p>
                        <div class="filebox">
                            <input class="upload-name" readonly>
                            <label for="attach_file">파일찾기</label> 
                            <input type="file" id="attach_file" class="blind">
                        </div>
                    </div>
                    <span class="inputSubCaption lh">
                    	<span>•</span>첨부파일의 용량은 300메가바이트(mb)를 넘을 수 없습니다.<br>
                    	<span>•</span>첨부파일의 용량이 300메가바이트(mb)를 초과하는 파일을 업로드 해야하는 경우 사무국으로 문의 바랍니다.<br>
                    	<span>•</span>지원 서류는 1개 파일만 업로드 가능합니다. 지원서류가 여러 파일일 경우, 폴더에 넣어 1개 파일로 압축한 형태로 업로드해주세요.
                    	
                   	</span>
                </div>
            </div>
            <div class="applyButton">
                <a href="#lnk" class="prevButton" onclick="fn_apply3_back()">이전으로</a>
                <a href="#lnk" class="nextButton" id="apply4_next" onclick="fn_apply4_next()">다음으로</a>
            </div>
        </form>
    </div>
</div>

<script>
	$("#attach_file").change(function(){
		var fileSize = $("#attach_file")[0].files[0].size;
		if(fileSize > 300000000){
			alert("첨부파일 용량은 300메가바이트(mb) 를 초과할 수 없습니다.")
			$("#attach_file").val("");
			$('#apply4_next').removeClass("active");
			return false;
		}
		else{
			$('#apply4_next').addClass("active");
		}
	});
	function fn_apply3_back(){
		$('#apply3').css("display", "flex");
		$('#apply4').hide();
	}
	function fn_apply4_next(){
		//팀정보
		$('#final_div').children().remove();
		var assignment_id = $("input[name='assignment_id']:checked").val()
		var assignment = ""
		if(assignment_id == '1') assignment = "자유과제"
		if(assignment_id == '2') assignment = "지정과제①"
		if(assignment_id == '3') assignment = "지정과제②"
			
		var local = $("select[name=local]").val();
		var title = $('#title').val();
		var team_cnt = $("input[name='team_cnt']:checked").val()
		var assignment_name = $('#assignment_name').val();
		
		$('#final_assignment').text(assignment)
		$('#final_local').text(local)
		$('#final_title').text(title)
		$('#final_team_cnt').text(team_cnt + "명")
		$('#final_assignment_name').text(assignment_name)
		
		
		//팀장정보
		var name_1 = $('#name_1').val()
		var birthday_1 = $('#birthday_1').val()
		var sex_1 = $("input[name='sex_1']:checked").val() == '1' ? "남" : "여"
		
		var mobile_1 = $('#mobile_1').val()
		var email_1 = $('#email_1').val()
		var company = $('#company_1').val()
		var depart = $('#depart_1').val()
		var shirt_1 = $("input[name='shirt_1']:checked").val()
		
		
		var parent_name = $('#parent_name_1').val()
		var parent_birthday = $('#parent_birthday_1').val()
		var parent_mobile = $('#parent_mobile_1').val()
		var parent_relation = $("input[name='parent_relation_1']:checked").val()
		var parent_address_1 = $('#parent_address_1').val()
		var parent_address_2 = $('#parent_address2_1').val()
		
		
		$('#final_name').text(name_1)
		$('#final_birthday').text(birthday_1)
		$('#final_sex').text(sex_1)
		$('#final_mobile').text(mobile_1)
		$('#final_email').text(email_1)
		$('#final_company').text(company)
		$('#final_depart').text(depart)
		$('#final_shirt').text(shirt_1)
		
		if(parent_name != ''){
			$('#final_parent_name').text(parent_name)
			$('#final_parent_birthday').text(parent_birthday)
			$('#final_parent_mobile').text(parent_mobile)
			$('#final_parent_relation').text(parent_relation)
			$('#final_parent_address').text(parent_address_1 + parent_address_2)	
		}
		
		
		
		//팀원정보
		var team_cnt = Number($("input[name='team_cnt']:checked").val())
		if(team_cnt > 0 ){
			var html = ''
			for(var i=2; i<team_cnt+1; i++){
				var icon = '①'
				if(i == 3) icon = '②'
				if(i == 4) icon = '③'
				if(i == 5) icon = '④'
				
				var name = $('#name_'+i).val()
				var birthday = $('#birthday_'+i).val()
				
				var sex = $("input[name='sex_"+i+"']:checked").val() == "1" ? "남" : "여" 
			
				
				var mobile = $('#mobile_'+i).val()
				var email = $('#email_'+i).val()
				var company = $('#company_'+i).val()
				var depart = $('#depart_'+i).val()
				var shirt = $("input[name='shirt_"+i+"']:checked").val()
				
				
				var parent_name_sub = $('#parent_name_'+i).val()
				var parent_birthday_sub = $('#parent_birthday_'+i).val()
				var parent_mobile_sub = $('#parent_mobile_'+i).val()
				var parent_relation_sub = $("input[name='parent_relation_"+i+"']:checked").val()
				var parent_address_1_sub = $('#parent_address_'+i).val()
				var parent_address_2_sub = $('#parent_address2_'+i).val()
				
				
				html +=
				'<div class="swiper-slide">'+
				'<p class="inputCaption">팀원'+icon+' 정보</p>'+
				'<ul class="teamInfo">'+
				'<li>'+
				'<p>성명</p>'+
				'<p>'+name+'</p>'+
				'</li>'+
				'<li>'+
				'<p>생년월일</p>'+
				'<p>'+birthday+'</p>'+
				'</li>'+
				'<li>'+
				'<p>성별</p>'+
				'<p>'+sex+'</p>'+
				'</li>'+
				'<li>'+
				'<p>연락처</p>'+
				'<p>'+mobile+'</p>'+
				'</li>'+
				'<li>'+
				'<p>이메일주소</p>'+
				'<p>'+email+'</p>'+
				'</li>'+
				'<li>'+
				'<p>직장/학교명</p>'+
				'<p>'+company+'</p>'+
				'</li>'+
				'<li>'+
				'<p>부서/학과명</p>'+
				'<p>'+depart+'</p>'+
				'</li>'+
				'<li>'+
				'<p>단체티 사이즈</p>'+
				'<p>'+shirt+'</p>'+
				'</li>'+
				'</ul>'
				
				if(parent_name_sub != ''){
					html +='<p class="inputCaption confirmPrents">보호자 정보</p>'+
					'<ul class="teamInfo">'+
					'<li>'+
					'<p>성명</p>'+
					'<p>'+parent_name_sub+'</p>'+
					'</li>'+
					'<li>'+
					'<p>생년월일</p>'+
					'<p>'+parent_birthday_sub+'</p>'+
					'</li>'+
					'<li>'+
					'<p>연락처</p>'+
					'<p>'+parent_mobile_sub+'</p>'+
					'</li>'+
					'<li>'+
					'<p>관계</p>'+
					'<p>'+parent_relation_sub+'</p>'+
					'</li>'+
					'<li>'+
					'<p>주소</p>'+
					'<p>'+parent_address_1_sub+parent_address_2_sub+'</p>'+
					'</li>'+
					'</ul>'+
					'</div>'
				}
				
				
				
			}
			$('#final_div').append(html)
		}
		
		$('.confirmWrapper').css("display", "flex");
		$('#apply4').hide();
		
		
	}

</script>