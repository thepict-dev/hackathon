<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<div class="applyWrapper" id="apply2">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <form action="" class="appBottom">
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">팀장 정보</h3>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox lg">
                            <p class="inputCaption">성명</p>
                            <input type="text" name="name_1" id="name_1" placeholder="성명을 입력하세요" onkeyup="fn_active_apply2()" autocomplete="new-password">
                        </div>
                        <div class="inputBox sm2">
                            <p class="inputCaption">생년월일</p>
                            <div class="birthInput">
                                <input type="text" name="birthday" id="birthday_1" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply2()"  autocomplete="new-password">
                            </div>
                            <span class="inputSubCaption youth" id="youth_1">미성년자의 경우 보호자의 정보가 필요합니다</span>
                        </div>
		                <div class="inputBox sm">
		                    <p class="inputCaption">성별</p>
		                    <div class="radioContainer">
		                        <div class="radioInput">
		                            <input type="radio" name="sex_1" id="male_1" value="1">
		                            <label for="male_1">남</label>
		                        </div>
		                        <div class="radioInput">
		                            <input type="radio" name="sex_1" id="female_1" value="2">
		                            <label for="female_1">여</label>
		                        </div>
		                    </div>
		                </div>
                    </div>
                </div>
                <div class="parentsContainer" id="parent_1">
                    <div class="inputContainer">
                        <div class="flexInputs">
                            <div class="inputBox per">
                                <p class="inputCaption">보호자 성명</p>
                                <input type="text" name="parent_name_1" id="parent_name_1" placeholder="성명을 입력하세요" autocomplete="new-password">
                            </div>
                            <div class="inputBox per">
                                <p class="inputCaption">보호자 생년월일</p>
                                <div class="birthInput">
                                    <input type="text" name="parent_birthday_1" id="parent_birthday_1" placeholder="YYMMDD" class="" maxlength="6" autocomplete="new-password">
                                    <span>-</span>
                                    <label for="birth2">
                                        <input type="text" name="parent_birthday_extra_1" id="parent_birthday_extra_1" class="" maxlength="1" autocomplete="new-password">
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inputContainer">
                        <div class="flexInputs">
                            <div class="inputBox per">
                                <p class="inputCaption">보호자 연락처</p>
                                <input type="text" name="parent_mobile_1" id="parent_mobile_1" placeholder="-빼고 입력하세요" oninput="oninputPhone(this)" maxlength="13" autocomplete="new-password">
                            </div>
                            <div class="inputBox per">
                                <p class="inputCaption mb24">관계</p>
                                <div class="radioContainer">
                                    <div class="radioInput">
                                        <input type="radio" name="parent_relation_1" id="parents" value="부모">
                                        <label for="parents">부모</label>
                                    </div>
                                    <div class="radioInput">
                                        <input type="radio" name="parent_relation_1" id="grand_parents" value="조부모">
                                        <label for="grand_parents">조부모</label>
                                    </div>
                                    <div class="radioInput">
                                        <input type="radio" name="parent_relation_1" id="etc" value="기타">
                                        <label for="etc">기타</label>
                                    </div>
                                    <input type="text" name="parent_relation_text_1" id="parent_relation_text_1" class="etcInput" placeholder="관계를 입력하세요" autocomplete="new-password">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="inputContainer">
                        <div class="addContainer">
                            <div class="inputBox">
                                <p class="inputCaption">보호자 주소</p>
                                <input type="text" name="parent_address_1" id="parent_address_1" readonly autocomplete="new-password">
                            </div>
                            <a href="#lnk" id="searchZip1">주소검색</a>
                        </div>
                        <input type="text" name="parent_address2_1" id="parent_address2_1" placeholder="상세주소를 입력해주세요" style="display:none" autocomplete="new-password">
                    </div>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption">연락처</p>
                            <input type="text" name="mobile_1" id="mobile_1" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply2()" oninput="oninputPhone(this)" maxlength="13" autocomplete="new-password">
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption">이메일</p>
                            <input type="text" name="email_1" id="email_1" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply2()" autocomplete="new-password">
                        </div>
                    </div>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption">직장/학교명</p>
                            <input type="text" name="company_1" id="company_1" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply2()" autocomplete="new-password">
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption">부서/학과명(선택)</p>
                            <input type="text" name="depart_1" id="depart_1" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply2()" autocomplete="new-password">
                        </div>
                    </div>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <div class="inputCaption mb24 tooltips">단체티 사이즈
                                <span onclick="openClose()"><img src="/front_img/apply/tooltip.png" alt=""></span>
                                <div class="sizePopup">
                                    <ul>
                                        <li>
                                            <p>사이즈</p>
                                            <p>S(85)</p>
                                            <p>M(90)</p>
                                            <p>L(95)</p>
                                            <p>XL(100)</p>
                                            <p>2XL(105)</p>
                                            <p>3XL(110)</p>
                                        </li>
                                        <li>
                                            <p>가슴</p>
                                            <p>96</p>
                                            <p>100</p>
                                            <p>104</p>
                                            <p>108</p>
                                            <p>112</p>
                                            <p>116</p>
                                        </li>
                                        <li>
                                            <p>밑단</p>
                                            <p>94</p>
                                            <p>98</p>
                                            <p>102</p>
                                            <p>106</p>
                                            <p>110</p>
                                            <p>114</p>
                                        </li>
                                        <li>
                                            <p>어깨</p>
                                            <p>42.5</p>
                                            <p>44</p>
                                            <p>45.5</p>
                                            <p>47</p>
                                            <p>48.5</p>
                                            <p>50</p>
                                        </li>
                                        <li>
                                            <p>등기장</p>
                                            <p>64</p>
                                            <p>66</p>
                                            <p>68</p>
                                            <p>70</p>
                                            <p>72</p>
                                            <p>74</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="radioContainer">
                                <div class="radioInput">
                                    <input type="radio" name="shirt_1" id="s" onchange="fn_active_apply2()" value="S">
                                    <label for="s">S</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="shirt_1" id="m" onchange="fn_active_apply2()" value="M">
                                    <label for="m">M</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="shirt_1" id="l" onchange="fn_active_apply2()" value="L">
                                    <label for="l">L</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="shirt_1" id="xl" onchange="fn_active_apply2()" value="XL">
                                    <label for="xl">XL</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="shirt_1" id="2xl" onchange="fn_active_apply2()" value="2XL">
                                    <label for="2xl">2XL</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="shirt_1" id="3xl" onchange="fn_active_apply2()" value="3XL">
                                    <label for="3xl">3XL</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="applyButton">
                <a href="#lnk" onclick="fn_apply1_back()" class="prevButton">이전으로</a>
                <a href="#lnk" onclick="fn_apply2_next()" class="nextButton" id="apply2_next">다음으로</a>
            </div>
        </form>
    </div>
</div>

<script>
	function oninputPhone(target) {
	    target.value = target.value
	        .replace(/[^0-9]/g, '')
	        .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
	}
	function fn_active_apply2(){
		var name_1 = $('#name_1').val()
		var birthday_1 = $('#birthday_1').val()
		var sex = $("input[name='sex_1']:checked").val()
		var mobile_1 = $('#mobile_1').val()
		var email_1 = $('#email_1').val()
		var company = $('#company_1').val()
		var depart = $('#depart_1').val()
		var shirt_1 = $("input[name='shirt_1']:checked").val()
		
		
		if(name_1 != null && name_1 != '' && name_1 != undefined){
			if(birthday_1 != null && birthday_1 != '' && birthday_1 != undefined){
				if(birthday_1.length == 8){
					if(sex != null && sex != '' && sex != undefined){
						if(mobile_1 != null && mobile_1 != '' && mobile_1 != undefined){
							if(email_1 != null && email_1 != '' && email_1 != undefined){
								if(company != null && company != '' && company != undefined){
									if(depart != null && depart != '' && depart != undefined){
										if(shirt_1 != null && shirt_1 != '' && shirt_1 != undefined){
											$('#apply2_next').addClass("active");
										}	
									}	
								}	
							}	
						}	
					}
				}
			}	
		}
	}

	function fn_apply1_back(){
		$('#apply1').css("display", "flex");
		$('#apply2').hide();
	}
	function fn_apply2_next(){
		$('#apply2').hide();
		$('#apply3').css("display", "flex");
		//apply_draw();
		
		var team_cnt = Number($("input[name='team_cnt']:checked").val())
		
		if(team_cnt > 0 ){
			for(var i=1; i<team_cnt; i++){
				$('#teamwond_'+i).css("display", "flex")
				
			}
		}
	}
	
	$('[id^="birthday_"]').on('blur', function(e) {
		var target = $(this).attr('id');
	    var idx = target.split("_")[1];
	    var birth = $('#' + target).val();
	    
	    if(birth.length != 8){
	    	alert("생년월일을 확인해주세요");
	    	return false;
	    }
	})
	
	$('[id^="birthday_"]').on('input', function(e) {
	    var target = $(this).attr('id');
	    var idx = target.split("_")[1];
	    var birth = $('#' + target).val();
	    
	    if(birth.length === 8) {
	        birth = birth.substring(0,4) + '-' + birth.substring(4,6) + "-" + birth.substring(6);
	        var birthDate = new Date(birth);
	        
	        var birthYear = birthDate.getFullYear();
	        var birthMonth = birthDate.getMonth();
	        var birthDay = birthDate.getDate();
	        
	        // 현재 날짜를 가져옵니다.
	        var currentDate = new Date();
	        var currentYear = currentDate.getFullYear();
	        var currentMonth = currentDate.getMonth();
	        var currentDay = currentDate.getDate();
	        
	        // 만 나이를 계산합니다.
	        var age = currentYear - birthYear;
	        
	        // 현재 월과 생일의 월을 비교합니다.
	        if (currentMonth < birthMonth) {
	          age--;
	        }
	        // 현재 월과 생일의 월이 같은 경우, 현재 일과 생일의 일을 비교합니다.
	        else if (currentMonth === birthMonth && currentDay < birthDay) {
	          age--;
	        }
	        
	        //미성년자
	        if(age < 19){
	            $('#parent_' + idx).addClass("active");
	            $('#youth_' + idx).addClass("active");
	        }
	        else{
	            $('#parent_' + idx).removeClass("active");
	            $('#youth_' + idx).removeClass("active");
	        }
	    } else {
	        $('#parent_' + idx).removeClass("active");
	        $('#youth_' + idx).removeClass("active");
	    }
	});
	
	
	

</script>