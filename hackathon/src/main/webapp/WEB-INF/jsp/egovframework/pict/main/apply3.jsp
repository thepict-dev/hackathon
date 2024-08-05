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
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">팀원① 정보</h3>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption">성명</p>
                            <input type="text" name="name" id="name" placeholder="성명을 입력하세요">
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption">생년월일</p>
                            <div class="birthInput">
                                <input type="text" name="birth1" id="birth1" placeholder="YYMMDD" class="">
                                <span>-</span>
                                <label for="birth2">
                                    <input type="text" name="birth2" id="birth2" class="">
                                </label>
                            </div>
                            <span class="inputSubCaption youth">미성년자의 경우 보호자의 정보가 필요합니다</span>
                        </div>
                    </div>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption">연락처</p>
                            <input type="text" name="phone" id="phone" placeholder="-빼고 입력하세요">
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption">이메일</p>
                            <input type="text" name="email" id="email" placeholder="이메일주소를 입력하세요">
                        </div>
                    </div>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption">직장/학교명</p>
                            <input type="text" name="group" id="group" placeholder="직장/학교명을 입력하세요">
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption">부서/학과명(선택)</p>
                            <input type="text" name="division" id="division" placeholder="부서/학과명을 입력하세요">
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
                                    <input type="radio" name="size" id="s">
                                    <label for="s">S</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="size" id="m">
                                    <label for="m">M</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="size" id="l">
                                    <label for="l">L</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="size" id="xl">
                                    <label for="xl">XL</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="size" id="2xl">
                                    <label for="2xl">2XL</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="size" id="3xl">
                                    <label for="3xl">3XL</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="applyButton">
                <a href="#lnk" class="prevButton">이전으로</a>
                <a href="#lnk" class="nextButton">다음으로</a>
            </div>
        </form>
    </div>
</div>