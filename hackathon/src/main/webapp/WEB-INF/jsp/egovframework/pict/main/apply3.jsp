<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="applyWrapper" id="apply3">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <form action="" class="appBottom">
        	<div id="teamwon">
        		
        	</div>
            <div class="applyButton">
            	<a href="#lnk" onclick="fn_apply2_back()" class="prevButton">이전으로</a>
                <a href="#lnk" onclick="fn_apply3_next()" class="nextButton active" id="apply3_next">다음으로</a>
                
            </div>
        </form>
    </div>
</div>

<script>
	function fn_apply2_back(){
		$('#apply2').css("display", "flex");
		$('#apply3').hide();
	}
	function fn_apply3_next(){
		$('#apply3').hide();
		$('#apply4').css("display", "flex");
	}

	function apply_draw(){
		var team_cnt = Number($("input[name='team_cnt']:checked").val())
		if(team_cnt > 0 ){
			var html = ''
			for(var i=2; i<team_cnt+1; i++){
				var icon = '②'
				if(i == 3) icon = '③'
				if(i == 4) icon = '④'
				if(i == 5) icon = '④'
				
				html +=	
				'<div class="wholeInputsWrapper">'+
				'<h3 class="appTitle">팀원'+icon+' 정보</h3>'+
				'<div class="inputContainer">'+
				'<div class="flexInputs">'+
				'<div class="inputBox per">'+
				'<p class="inputCaption">성명</p>'+
				'<input type="text" name="name_'+i+'" id="name_'+i+'" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">'+
				'</div>'+
				'<div class="inputBox per">'+
				'<p class="inputCaption">생년월일</p>'+
				'<div class="birthInput">'+
				'<input type="text" name="birthday_'+i+'" id="birthday_'+i+'" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">'+
				'<span>-</span>'+
				'<label for="birth2">'+
				'<input type="text" name="birthday_'+i+'_extra" id="birthday_'+i+'_extra" class="" maxlength="1" onkeyup="fn_active_apply3()">'+
				'</label>'+
				'</div>'+
				'<span class="inputSubCaption youth">미성년자의 경우 보호자의 정보가 필요합니다</span>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'<div class="inputContainer">'+
				'<div class="flexInputs">'+
				'<div class="inputBox per">'+
				'<p class="inputCaption">연락처</p>'+
				'<input type="text" name="mobile_'+i+'" id="mobile_'+i+'" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">'+
				'</div>'+
				'<div class="inputBox per">'+
				'<p class="inputCaption">이메일</p>'+
				'<input type="text" name="email_'+i+'" id="email_'+i+'" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">'+
				'</div>'+
				'</div>'+
				'</div>'+
				'<div class="inputContainer">'+
				'<div class="flexInputs">'+
				'<div class="inputBox per">'+
				'<p class="inputCaption">직장/학교명</p>'+
				'<input type="text" name="company_'+i+'" id="company_'+i+'" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">'+
				'</div>'+
				'<div class="inputBox per">'+
				'<p class="inputCaption">부서/학과명(선택)</p>'+
				'<input type="text" name="depart_'+i+'" id="depart_'+i+'" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">'+
				'</div>'+
				'</div>'+
				'</div>'+
				'<div class="inputContainer">'+
				'<div class="flexInputs">'+
				'<div class="inputBox per">'+
				'<div class="inputCaption mb24 tooltips">단체티 사이즈'+
				'<span onclick="openClose()"><img src="/front_img/apply/tooltip.png" alt=""></span>'+
				'<div class="sizePopup">'+
				'<ul>'+
				'<li>'+
				'<p>사이즈</p>'+
				'<p>S(85)</p>'+
				'<p>M(90)</p>'+
				'<p>L(95)</p>'+
				'<p>XL(100)</p>'+
				'<p>2XL(105)</p>'+
				'<p>3XL(110)</p>'+
				'</li>'+
				'<li>'+
				'<p>가슴</p>'+
				'<p>96</p>'+
				'<p>100</p>'+
				'<p>104</p>'+
				'<p>108</p>'+
				'<p>112</p>'+
				'<p>116</p>'+
				'</li>'+
				'<li>'+
				'<p>밑단</p>'+
				'<p>94</p>'+
				'<p>98</p>'+
				'<p>102</p>'+
				'<p>106</p>'+
				'<p>110</p>'+
				'<p>114</p>'+
				'</li>'+
				'<li>'+
				'<p>어깨</p>'+
				'<p>42.5</p>'+
				'<p>44</p>'+
				'<p>45.5</p>'+
				'<p>47</p>'+
				'<p>48.5</p>'+
				'<p>50</p>'+
				'</li>'+
				'<li>'+
				'<p>등기장</p>'+
				'<p>64</p>'+
				'<p>66</p>'+
				'<p>68</p>'+
				'<p>70</p>'+
				'<p>72</p>'+
				'<p>74</p>'+
				'</li>'+
				'</ul>'+
				'</div>'+
				'</div>'+
				'<div class="radioContainer">'+
				'<div class="radioInput">'+
				'<input type="radio" name="shirt_'+i+'" id="s" value="S" onchange="fn_active_apply3()">'+
				'<label for="s">S</label>'+
				'</div>'+
				'<div class="radioInput">'+
				'<input type="radio" name="shirt_'+i+'" id="m" value="M" onchange="fn_active_apply3()">'+
				'<label for="m">M</label>'+
				'</div>'+
				'<div class="radioInput">'+
				'<input type="radio" name="shirt_'+i+'" id="l" value="L" onchange="fn_active_apply3()">'+
				'<label for="l">L</label>'+
				'</div>'+
				'<div class="radioInput">'+
				'<input type="radio" name="shirt_'+i+'" id="xl" value="XL" onchange="fn_active_apply3()">'+
				'<label for="xl">XL</label>'+
				'</div>'+
				'<div class="radioInput">'+
				'<input type="radio" name="shirt_'+i+'" id="2xl" value="2XL" onchange="fn_active_apply3()">'+
				'<label for="2xl">2XL</label>'+
				'</div>'+
				'<div class="radioInput">'+
				'<input type="radio" name="shirt_'+i+'" id="3xl" value="3XL" onchange="fn_active_apply3()">'+
				'<label for="3xl">3XL</label>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'</div>'+
				'</div>'
			}
			$('#teamwon').append(html)
		}
	}
	
	function fn_active_apply3(){
		var team_cnt = Number($("input[name='team_cnt']:checked").val())
		var allConditionsMet = false;
		var arr = [];
		if(team_cnt > 0 ){
			for(var i=2; i<team_cnt+1; i++){
				var name = $('#name_'+i).val()
				var birthday = $('#birthday_'+i).val()
				var birthday_extra = $('#birthday_'+i+'_extra').val()
				var mobile = $('#mobile_'+i).val()
				var email = $('#email_'+i).val()
				var company = $('#company_'+i).val()
				var depart = $('#depart_'+i).val()
				var shirt = $("input[name='shirt_"+i+"']:checked").val()
				
				const checkCondition = (value) => value != null && value !== '' && value !== undefined;
				if(
					checkCondition(name) &&
				    checkCondition(birthday) &&
				    checkCondition(birthday_extra) &&
				    checkCondition(mobile) &&
				    checkCondition(email) &&
				    checkCondition(company) &&
				    checkCondition(depart) &&
				    checkCondition(shirt)
			    ){
					arr.push(true)
				}
			}
			allConditionsMet = arr.length === (team_cnt - 1) && arr.every(value => value === true);
			
			if (allConditionsMet) {
				$('#apply3_next').addClass("active");
			}
			else{
				$('#apply3_next').removeClass("active");
			}
			
		}
	}
</script>