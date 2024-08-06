<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
			                <span class="inputSubCaption youth" id="youth_2">미성년자의 경우 보호자의 정보가 필요합니다</span>
			            </div>
			            <div class="inputBox sm">
			                <p class="inputCaption">성별</p>
			                <div class="radioContainer">
			                    <div class="radioInput">
			                        <input type="radio" name="sex_2" id="male_2" value="1">
			                        <label for="male_2">남</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="sex_2" id="female_2" value="2">
			                        <label for="female_2">여</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			    <div class="parentsContainer" id="parent_2">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_2" id="parent_name_2" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_2" id="parent_birthday_2" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_2" id="parent_birthday_extra_2" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_2" id="parent_mobile_2" placeholder="-빼고 입력하세요" maxlength="11">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption mb24">관계</p>
			                    <div class="radioContainer">
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_2" id="parents_2" value="부모">
			                            <label for="parents_2">부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_2" id="grand_parents_2" value="조부모">
			                            <label for="grand_parents_2">조부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_2" id="etc_2" value="기타">
			                            <label for="etc_2">기타</label>
			                        </div>
			                        <input type="text" name="parent_relation_text_2" id="parent_relation_text_2" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_2" id="parent_address_2" readonly>
			                </div>
			                <a href="#lnk" id="searchZip2">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_2" id="parent_address2_2" placeholder="상세주소를 입력해주세요" style="display:none">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_2" id="mobile_2" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_2" id="email_2" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_2" id="company_2" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_2" id="depart_2" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_2" id="s_2" onchange="fn_active_apply3()" value="S">
			                        <label for="s_2">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_2" id="m_2" onchange="fn_active_apply3()" value="M">
			                        <label for="m_2">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_2" id="l_2" onchange="fn_active_apply3()" value="L">
			                        <label for="l_2">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_2" id="xl_2" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl_2">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_2" id="2xl_2" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl_2">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_2" id="3xl_2" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl_2">3XL</label>
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
			                <input type="text" name="name_3" id="name_3" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday_3" id="birthday_3" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth" id="youth_3">미성년자의 경우 보호자의 정보가 필요합니다</span>
			            </div>
			            <div class="inputBox sm">
			                <p class="inputCaption">성별</p>
			                <div class="radioContainer">
			                    <div class="radioInput">
			                        <input type="radio" name="sex_3" id="male_3" value="1">
			                        <label for="male_3">남</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="sex_3" id="female_3" value="2">
			                        <label for="female_3">여</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			    <div class="parentsContainer" id="parent_3">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_3" id="parent_name_3" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_3" id="parent_birthday_3" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_3" id="parent_birthday_extra_3" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_3" id="parent_mobile_3" placeholder="-빼고 입력하세요" maxlength="11">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption mb24">관계</p>
			                    <div class="radioContainer">
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_3" id="parents_3" value="부모">
			                            <label for="parents_3">부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_3" id="grand_parents_3" value="조부모">
			                            <label for="grand_parents_3">조부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_3" id="etc_3" value="기타">
			                            <label for="etc_3">기타</label>
			                        </div>
			                        <input type="text" name="parent_relation_text_3" id="parent_relation_text_3" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_3" id="parent_address_3" readonly>
			                </div>
			                <a href="#lnk" id="searchZip3">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_3" id="parent_address2_3" placeholder="상세주소를 입력해주세요" style="display:none">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_3" id="mobile_3" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_3" id="email_3" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_3" id="company_3" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_3" id="depart_3" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_3" id="s_3" onchange="fn_active_apply3()" value="S">
			                        <label for="s_3">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_3" id="m_3" onchange="fn_active_apply3()" value="M">
			                        <label for="m_3">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_3" id="l_3" onchange="fn_active_apply3()" value="L">
			                        <label for="l_3">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_3" id="xl_3" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl_3">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_3" id="2xl_3" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl_3">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_3" id="3xl_3" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl_3">3XL</label>
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
			                <input type="text" name="name_4" id="name_4" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday" id="birthday_4" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth" id="youth_4">미성년자의 경우 보호자의 정보가 필요합니다</span>
			            </div>
			            <div class="inputBox sm">
			                <p class="inputCaption">성별</p>
			                <div class="radioContainer">
			                    <div class="radioInput">
			                        <input type="radio" name="sex_4" id="male_4" value="1">
			                        <label for="male_4">남</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="sex_4" id="female_4" value="2">
			                        <label for="female_4">여</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			    <div class="parentsContainer" id="parent_4">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_4" id="parent_name_4" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_4" id="parent_birthday_4" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_4" id="parent_birthday_extra_4" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_4" id="parent_mobile_4" placeholder="-빼고 입력하세요" maxlength="11">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption mb24">관계</p>
			                    <div class="radioContainer">
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_4" id="parents_4" value="부모">
			                            <label for="parents_2">부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_4" id="grand_parents_4" value="조부모">
			                            <label for="grand_parents_4">조부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_4" id="etc_4" value="기타">
			                            <label for="etc_4">기타</label>
			                        </div>
			                        <input type="text" name="parent_relation_text_4" id="parent_relation_text_4" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_4" id="parent_address_4" readonly>
			                </div>
			                <a href="#lnk" id="searchZip4">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_4" id="parent_address2_4" placeholder="상세주소를 입력해주세요" style="display:none">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_4" id="mobile_4" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_4" id="email_4" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_4" id="company_4" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_4" id="depart_4" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_4" id="s_4" onchange="fn_active_apply3()" value="S">
			                        <label for="s_4">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_4" id="m_4" onchange="fn_active_apply3()" value="M">
			                        <label for="m_4">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_4" id="l_4" onchange="fn_active_apply3()" value="L">
			                        <label for="l_4">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_4" id="xl_4" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl_4">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_4" id="2xl_4" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl_4">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_4" id="3xl_4" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl_4">3XL</label>
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
			                <input type="text" name="name_5" id="name_5" placeholder="성명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox sm2">
			                <p class="inputCaption">생년월일</p>
			                <div class="birthInput">
			                    <input type="text" name="birthday" id="birthday_5" placeholder="YYYYMMDD" class="" maxlength="8" onkeyup="fn_active_apply3()">
			                </div>
			                <span class="inputSubCaption youth" id="youth_5">미성년자의 경우 보호자의 정보가 필요합니다</span>
			            </div>
			            <div class="inputBox sm">
			                <p class="inputCaption">성별</p>
			                <div class="radioContainer">
			                    <div class="radioInput">
			                        <input type="radio" name="sex_5" id="male_5" value="1">
			                        <label for="male_5">남</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="sex_5" id="female_5" value="2">
			                        <label for="female_5">여</label>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			    <div class="parentsContainer" id="parent_5">
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 성명</p>
			                    <input type="text" name="parent_name_5" id="parent_name_5" placeholder="성명을 입력하세요">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 생년월일</p>
			                    <div class="birthInput">
			                        <input type="text" name="parent_birthday_5" id="parent_birthday_5" placeholder="YYMMDD" class="" maxlength="6">
			                        <span>-</span>
			                        <label for="birth2">
			                            <input type="text" name="parent_birthday_extra_5" id="parent_birthday_extra_5" class="" maxlength="1">
			                        </label>
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="flexInputs">
			                <div class="inputBox per">
			                    <p class="inputCaption">보호자 연락처</p>
			                    <input type="text" name="parent_mobile_5" id="parent_mobile_5" placeholder="-빼고 입력하세요" maxlength="11">
			                </div>
			                <div class="inputBox per">
			                    <p class="inputCaption mb24">관계</p>
			                    <div class="radioContainer">
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_5" id="parents_5" value="부모">
			                            <label for="parents_5">부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_5" id="grand_parents_5" value="조부모">
			                            <label for="grand_parents_5">조부모</label>
			                        </div>
			                        <div class="radioInput">
			                            <input type="radio" name="parent_relation_5" id="etc_5" value="기타">
			                            <label for="etc_5">기타</label>
			                        </div>
			                        <input type="text" name="parent_relation_text_5" id="parent_relation_text_5" class="etcInput" placeholder="관계를 입력하세요">
			                    </div>
			                </div>
			            </div>
			        </div>
			        <div class="inputContainer">
			            <div class="addContainer">
			                <div class="inputBox">
			                    <p class="inputCaption">보호자 주소</p>
			                    <input type="text" name="parent_address_5" id="parent_address_5" readonly>
			                </div>
			                <a href="#lnk" id="searchZip5">주소검색</a>
			            </div>
			            <input type="text" name="parent_address2_5" id="parent_address2_5" placeholder="상세주소를 입력해주세요" style="display:none">
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">연락처</p>
			                <input type="text" name="mobile_5" id="mobile_5" placeholder="-빼고 입력하세요" onkeyup="fn_active_apply3()" oninput="oninputPhone(this)" maxlength="13">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">이메일</p>
			                <input type="text" name="email_5" id="email_5" placeholder="이메일주소를 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			        </div>
			    </div>
			    <div class="inputContainer">
			        <div class="flexInputs">
			            <div class="inputBox per">
			                <p class="inputCaption">직장/학교명</p>
			                <input type="text" name="company_5" id="company_5" placeholder="직장/학교명을 입력하세요" onkeyup="fn_active_apply3()">
			            </div>
			            <div class="inputBox per">
			                <p class="inputCaption">부서/학과명(선택)</p>
			                <input type="text" name="depart_5" id="depart_5" placeholder="부서/학과명을 입력하세요" onkeyup="fn_active_apply3()">
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
			                        <input type="radio" name="shirt_5" id="s_5" onchange="fn_active_apply3()" value="S">
			                        <label for="s_5">S</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_5" id="m_5" onchange="fn_active_apply3()" value="M">
			                        <label for="m_5">M</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_5" id="l_5" onchange="fn_active_apply3()" value="L">
			                        <label for="l_5">L</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_5" id="xl_5" onchange="fn_active_apply3()" value="XL">
			                        <label for="xl_5">XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_5" id="2xl_5" onchange="fn_active_apply3()" value="2XL">
			                        <label for="2xl_5">2XL</label>
			                    </div>
			                    <div class="radioInput">
			                        <input type="radio" name="shirt_5" id="3xl_5" onchange="fn_active_apply3()" value="3XL">
			                        <label for="3xl_5">3XL</label>
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
	$('[id^="birthday_"]').blur(function(e) {
		
		var target = $(this).attr('id');
		var idx = target.split("_")[1] 
		var birth = $('#' + target).val();
		
		
		if(birth.length != 8){
			alert("생년월일 입력을 확인해주세요.")
			return false;
		}
		else{
			birth = birth.substring(0,4) + '-' + birth.substring(4,6) + "-" + birth.substring(6)
			birth = new Date(birth)
		}
		var birthYear = birth.getFullYear();
		var birthMonth = birth.getMonth();
		var birthDay = birth.getDate();
		
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
			
			$('#parent_' + idx).addClass("active")
			$('#youth_' + idx).addClass("active")
		}
		else{
			$('#parent_' + idx).removeClass("active")
			$('#youth_' + idx).removeClass("active")
		}
	})
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
				var sex = $("input[name='sex_"+i+"']:checked").val()
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
	
	window.onload = function(){
		document.getElementById("searchZip1").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                //document.getElementById("HPOSTCODE").value = data.zonecode;
	                document.getElementById("parent_address_1").value = data.address; // 주소 넣기
	                document.getElementById("parent_address2_1").focus();
	                $('#parent_address2_1').css("display", "block")
	            }
	        }).open();
	    });
	    document.getElementById("searchZip2").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                //document.getElementById("HPOSTCODE").value = data.zonecode;
	                document.getElementById("parent_address_2").value = data.address; // 주소 넣기
	                document.getElementById("parent_address2_2").focus();
	                $('#parent_address2_2').css("display", "block")
	            }
	        }).open();
	    });
	    document.getElementById("searchZip3").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                //document.getElementById("HPOSTCODE").value = data.zonecode;
	                document.getElementById("parent_address_3").value = data.address; // 주소 넣기
	                document.getElementById("parent_address2_3").focus();
	                $('#parent_address2_3').css("display", "block")
	            }
	        }).open();
	    });
	    document.getElementById("searchZip4").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                //document.getElementById("HPOSTCODE").value = data.zonecode;
	                document.getElementById("parent_address_4").value = data.address; // 주소 넣기
	                document.getElementById("parent_address2_4").focus();
	                $('#parent_address2_4').css("display", "block")
	            }
	        }).open();
	    });
	    document.getElementById("searchZip5").addEventListener("click", function(){ //주소입력칸을 클릭하면
	        //카카오 지도 발생
	        new daum.Postcode({
	            oncomplete: function(data) { //선택시 입력값 세팅
	                //document.getElementById("HPOSTCODE").value = data.zonecode;
	                document.getElementById("parent_address_5").value = data.address; // 주소 넣기
	                document.getElementById("parent_address2_5").focus();
	                $('#parent_address2_5').css("display", "block")
	            }
	        }).open();
	    });
	}
	
	
</script>