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
                    <span class="inputSubCaption lh"><span>•</span>첨부파일의 용량은 50메가바이트(mb)를 넘을 수 없습니다.<br><span>•</span>지원 서류는 1개 파일만 업로드 가능합니다. 지원서류가 여러 파일일 경우, 폴더에 넣어 1개 파일로 압축한 형태로 업로드해주세요.</span>
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
	function fn_apply3_back(){
		$('#apply3').css("display", "flex");
		$('#apply4').hide();
	}
	function fn_apply4_next(){
		//팀정보
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
		
		debugger
		//팀장정보
		var name_1 = $('#name_1').val()
		var birthday_1 = $('#birthday_1').val()
		var birthday_1_extra = $('#birthday_1_extra').val()
		var sex = "남"
		if(birthday_1_extra == '2' || birthday_1_extra == '4') sex = "여"
		
		var mobile_1 = $('#mobile_1').val()
		var email_1 = $('#email_1').val()
		var company = $('#company_1').val()
		var depart = $('#depart_1').val()
		var shirt_1 = $("input[name='shirt_1']:checked").val()
		
		$('#final_name').text(name_1)
		$('#final_birthday').text(birthday_1)
		$('#final_sex').text(sex)
		$('#final_mobile').text(mobile_1)
		$('#final_email').text(email_1)
		$('#final_company').text(company)
		$('#final_depart').text(depart)
		$('#final_shirt').text(shirt_1)
		
		
		//팀원정보
		var team_cnt = Number($("input[name='team_cnt']:checked").val())
		if(team_cnt > 0 ){
			var html = ''
			for(var i=2; i<team_cnt+1; i++){
				var icon = '②'
				if(i == 3) icon = '③'
				if(i == 4) icon = '④'
				if(i == 5) icon = '④'
				
				var name = $('#name_'+i).val()
				var birthday = $('#birthday_'+i).val()
				
				var sex = $('#birthday_'+i + '_extra').val()
				if(sex == '1' || sex == '3') sex = "남"
				else sex = "여"
				
				var mobile = $('#mobile_'+i).val()
				var email = $('#email_'+i).val()
				var company = $('#company_'+i).val()
				var depart = $('#depart_'+i).val()
				var shirt = $("input[name='shirt_"+i+"']:checked").val()
				
				
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
				'</ul>'+
				'</div>'
			}
			$('#final_div').append(html)
		}
		
		$('.confirmWrapper').css("display", "flex");
		$('#apply4').hide();
		
		
	}

	$("#attach_file").change(function(){
		$('#apply4_next').addClass("active");
	})
</script>