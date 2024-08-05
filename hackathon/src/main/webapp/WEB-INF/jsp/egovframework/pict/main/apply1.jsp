<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="applyWrapper" id="apply1">
    <div class="applyContainer">
        <div class="appTop">
            <p>제11회 대한민국 SW 융합 해커톤 대회 본선 등록</p>
            <button type="button"><img src="/front_img/apply/close-app.png" alt=""></button>
        </div>
        <form action="" class="appBottom">
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">팀 정보</h3>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption mb24">참가구분</p>
                            <div class="radioContainer">
                                <div class="radioInput">
                                    <input type="radio" name="gubun" id="gubun1">
                                    <label for="gubun1">자유과제</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="gubun" id="gubun2">
                                    <label for="gubun2">지정과제①</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="gubun" id="gubun3">
                                    <label for="gubun3">지정과제②</label>
                                </div>
                            </div>
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption mb24">참가구분</p>
                            <select name="region" id="region">
                                <option value="">소속 지역</option>
                                <option value="1">강원</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox per">
                            <p class="inputCaption">팀명</p>
                            <input type="text" name="team_name" id="team_name" placeholder="팀명을 입력하세요">
                        </div>
                        <div class="inputBox per">
                            <p class="inputCaption mb24">팀원 수</p>
                            <div class="radioContainer">
                                <div class="radioInput">
                                    <input type="radio" name="team_people" id="team_people1">
                                    <label for="team_people1">2명</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="team_people" id="team_people2">
                                    <label for="team_people2">3명</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="team_people" id="team_people3">
                                    <label for="team_people3">4명</label>
                                </div>
                                <div class="radioInput">
                                    <input type="radio" name="team_people" id="team_people4">
                                    <label for="team_people4">5명</label>
                                </div>
                            </div>
                            <span class="inputSubCaption mt2">팀장을 포함한 총 인원을 선택해주세요</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="wholeInputsWrapper">
                <h3 class="appTitle">제안 정보</h3>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox">
                            <p class="inputCaption">제안명</p>
                            <input type="text" name="offer" id="offer" placeholder="제안명을 입력하세요">
                        </div>
                    </div>
                    <span class="inputSubCaption">참가자 개발 분야와 관련된 제목을 표기해주세요</span>
                </div>
                <div class="inputContainer">
                    <div class="flexInputs">
                        <div class="inputBox">
                            <p class="inputCaption">키워드</p>
                            <input type="text" name="keyword" id="keyword" placeholder="키워드를 5개 이내로 입력하세요">
                        </div>
                    </div>
                    <span class="inputSubCaption">쉼표로 구분하세요</span>
                </div>
            </div>
            <div class="applyButton">
                <!-- <a href="#lnk" class="prevButton">이전으로</a> -->
                <a href="#lnk" class="nextButton">다음으로</a>
            </div>
        </form>
    </div>
</div>