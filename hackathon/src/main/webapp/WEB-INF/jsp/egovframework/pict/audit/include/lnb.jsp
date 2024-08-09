<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="lnb">
    <h2>심사현황</h2>
    <ul class="lnbList">
        <li>
            <p class="lnbListTitle">총 평가팀</p>
            <div class="lnbListText">
                <span>${whole_cnt}</span>
                <p>팀</p>
            </div>
        </li>
        <li>
            <p class="lnbListTitle">평가 완료팀</p>
            <div class="lnbListText">
                <!-- finish -->
                <span class="completion">${whole_cnt - remain_cnt }</span>
                <p>팀</p>
            </div>
        </li>
        <li>
            <p class="lnbListTitle">남은 팀</p>
            <div class="lnbListText">
                <span>${remain_cnt}</span>
                <p>팀</p>
            </div>
        </li>
    </ul>
</div>