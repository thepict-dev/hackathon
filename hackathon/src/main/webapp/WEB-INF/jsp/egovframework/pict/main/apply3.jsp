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
			<div class="wholeInputsWrapper" style="display:none" id="teamwond_1">
			    <h3 class="appTitle">팀원① 정보</h3>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox lg">
			                <p class="inputCaption">성명</p>
			                <input type="text" name="name_2" id="name_2" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday_2" id="birthday_2" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth">미성년자의 경우 보호자의 정보가 필요합니다</span>
			            </div>
			            <div class="inputBox sm">
			                <p class="inputCaption">성별</p>
			                <div class="radioContainer">
			                    <div class="radioInput">
			                        <input type="radio" name="sex_2" id="male_2" value="1">
			                        <label for="male_1">남</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="sex_2" id="female_1" value="2">
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
			                    <input type="text" name="parent_name_1" id="parent_name_1" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_1" id="parent_birthday_1" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_1" id="parent_birthday_extra_1" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_1" id="parent_mobile_1" placeholder="-빼고 입력하세요" maxlength="11">
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
			                        <input type="text" name="parent_relation_text_1" id="parent_relation_text_1" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_1" id="parent_address_1" readonly>
			                </div>
			                <a href="#lnk" id="searchZip">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_1" id="parent_address2_1" placeholder="상세주소를 입력해주세요">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_1" id="mobile_1" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_1" id="email_1" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_1" id="company_1" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_1" id="depart_1" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_1" id="s" onchange="fn_active_apply3()" value="S">
			                        <label for="s">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="m" onchange="fn_active_apply3()" value="M">
			                        <label for="m">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="l" onchange="fn_active_apply3()" value="L">
			                        <label for="l">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="xl" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="2xl" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="3xl" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl">3XL</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
			<div class="wholeInputsWrapper" style="display:none" id="teamwond_2">
			    <h3 class="appTitle">팀원② 정보</h3>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox lg">
			                <p class="inputCaption">성명</p>
			                <input type="text" name="name_1" id="name_1" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday" id="birthday_1" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth">미성년자의 경우 보호자의 정보가 필요합니다</span>
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
			    <div class="parentsContainer">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_1" id="parent_name_1" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_1" id="parent_birthday_1" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_1" id="parent_birthday_extra_1" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_1" id="parent_mobile_1" placeholder="-빼고 입력하세요" maxlength="11">
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
			                        <input type="text" name="parent_relation_text_1" id="parent_relation_text_1" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_1" id="parent_address_1" readonly>
			                </div>
			                <a href="#lnk" id="searchZip">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_1" id="parent_address2_1" placeholder="상세주소를 입력해주세요">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_1" id="mobile_1" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_1" id="email_1" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_1" id="company_1" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_1" id="depart_1" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_1" id="s" onchange="fn_active_apply3()" value="S">
			                        <label for="s">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="m" onchange="fn_active_apply3()" value="M">
			                        <label for="m">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="l" onchange="fn_active_apply3()" value="L">
			                        <label for="l">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="xl" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="2xl" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="3xl" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl">3XL</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
			<div class="wholeInputsWrapper" style="display:none" id="teamwond_3">
			    <h3 class="appTitle">팀원③ 정보</h3>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox lg">
			                <p class="inputCaption">성명</p>
			                <input type="text" name="name_1" id="name_1" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday" id="birthday_1" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth">미성년자의 경우 보호자의 정보가 필요합니다</span>
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
			    <div class="parentsContainer">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_1" id="parent_name_1" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_1" id="parent_birthday_1" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_1" id="parent_birthday_extra_1" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_1" id="parent_mobile_1" placeholder="-빼고 입력하세요" maxlength="11">
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
			                        <input type="text" name="parent_relation_text_1" id="parent_relation_text_1" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_1" id="parent_address_1" readonly>
			                </div>
			                <a href="#lnk" id="searchZip">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_1" id="parent_address2_1" placeholder="상세주소를 입력해주세요">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_1" id="mobile_1" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_1" id="email_1" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_1" id="company_1" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_1" id="depart_1" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_1" id="s" onchange="fn_active_apply3()" value="S">
			                        <label for="s">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="m" onchange="fn_active_apply3()" value="M">
			                        <label for="m">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="l" onchange="fn_active_apply3()" value="L">
			                        <label for="l">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="xl" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="2xl" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="3xl" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl">3XL</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
			<div class="wholeInputsWrapper"  style="display:none" id="teamwond_4">
			    <h3 class="appTitle">팀원④ 정보</h3>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox lg">
			                <p class="inputCaption">성명</p>
			                <input type="text" name="name_1" id="name_1" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday" id="birthday_1" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth">미성년자의 경우 보호자의 정보가 필요합니다</span>
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
			    <div class="parentsContainer">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_1" id="parent_name_1" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_1" id="parent_birthday_1" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_1" id="parent_birthday_extra_1" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_1" id="parent_mobile_1" placeholder="-빼고 입력하세요" maxlength="11">
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
			                        <input type="text" name="parent_relation_text_1" id="parent_relation_text_1" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_1" id="parent_address_1" readonly>
			                </div>
			                <a href="#lnk" id="searchZip">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_1" id="parent_address2_1" placeholder="상세주소를 입력해주세요">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_1" id="mobile_1" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_1" id="email_1" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_1" id="company_1" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_1" id="depart_1" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_1" id="s" onchange="fn_active_apply3()" value="S">
			                        <label for="s">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="m" onchange="fn_active_apply3()" value="M">
			                        <label for="m">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="l" onchange="fn_active_apply3()" value="L">
			                        <label for="l">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="xl" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="2xl" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_1" id="3xl" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl">3XL</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
            <div class="applyButton">
            	<a href="#lnk" onclick="fn_apply2_back()" class="prevButton">이전으로</a>
                <a href="#lnk" onclick="fn_apply3_next()" class="nextButton" id="apply3_next">다음으로</a>
                
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
	
	function fn_active_apply3(){
		var team_cnt = Number($("input[name='team_cnt']:checked").val())
		var allConditionsMet = false;
		var arr = [];
		if(team_cnt > 0 ){
			for(var i=2; i<team_cnt+1; i++){
				var name = $('#name_'+i).val()
				var birthday = $('#birthday_'+i).val()
				var sex = $('#sex'+i).val()
				var mobile = $('#mobile_'+i).val()
				var email = $('#email_'+i).val()
				var company = $('#company_'+i).val()
				var depart = $('#depart_'+i).val()
				var shirt = $("input[name='shirt_"+i+"']:checked").val()
				
				const checkCondition = (value) => value != null && value !== '' && value !== undefined;
				if(
					checkCondition(name) &&
				    checkCondition(birthday) &&
				    checkCondition(sex) &&
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