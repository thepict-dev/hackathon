//gnb
let isActiveGNB = false;
$(document).on('mouseover','.pcHeaderInner nav > ul > li',function(){
    isActiveGNB = true
    if (isActiveGNB) {
        $(this).find('.sub').stop().slideDown(300);
        $('.bg').stop().slideDown(300);
    }
});

$(document).on('mouseleave', '.pcHeaderInner nav > ul > li',function(){
    isActiveGNB = false
    if (!isActiveGNB) {
        $(this).find('.sub').stop().slideUp(300);
        $('.bg').stop().slideUp(300);
    }
});
//모바일메뉴
var acodian = {

    click: function(target) {
        var _self = this,
            $target = $(target);
        $target.on('click', function() {
            var $this = $(this);
            if ($this.next('.mbGnb').css('display') === 'none') {
            $('.mbGnb').slideUp();
            _self.onremove($target);
    
            $this.addClass('on');
            $this.next().slideDown();
            } else {
            $('.mbGnb').slideUp();
            _self.onremove($target);
            }
        });
    },
    onremove: function($target) {
        $target.removeClass('on');
    }
};
acodian.click('.depWrap');

// 모바일 네비 활성화 후 주석 풀기

const btn = document.querySelector('.mbHeaderTop button');
const mbMenu = document.querySelector('.mbNav');
const headerColor = document.querySelector('.mbHeader');

btn.addEventListener('click', evt => {
	mbMenu.classList.toggle('active');
	headerColor.classList.toggle('active');
})


// 컨텐츠 로드
$(function(){
    $(".photoList").slice(0, 8).css('display', 'block');
    $(".load").click(function(e){
        e.preventDefault();
        $(".photoList:hidden").slice(0, 8).css('display', 'block');
        if($(".photoList:hidden").length === 0){
            $(".load").hide()
        }
    });
});

//역대대회

$(window).on('load', function(){
  tab();
})

function tab(){
  //탭 구분 파라미터 이름
  const paramName = 'tabName';

  //탭메뉴 실행 함수
  function activateTab(tabId, updateUrlParam){
    //tabId 값이 first 일 때 첫번째 탭 선택
    tabId = tabId === 'first' ? $('.history .hisNavWrap .hisNav > li:first-child a').attr('href') : tabId;

    //초기화
    $(".history .hisNavWrap .hisNav > li").removeClass("active");
    $(".hisContWrap").hide(); 

    //실행
    $(`.history .hisNavWrap .hisNav > li a[href*="${tabId}"]`).parent().addClass("active");
    $(tabId).show();

    //탭메뉴 클릭할 때 url 파라미터 변경
    if(updateUrlParam){
      setUrlParam(tabId);
    }
  }

  //파라미터 값 변경 함수
  function setUrlParam(tabId) {
    const params = new URLSearchParams(location.search);
    params.set(paramName, tabId.slice(1));
    history.pushState(null, null, `${location.origin}${location.pathname}?${params.toString()}`);
  }

  //파라미터 확인 함수
  function getUrlParam() {
    const urlParams = new URLSearchParams(location.search);
    return urlParams.get(paramName);
  }

  //파라미터 값 확인
  const tabName = getUrlParam();

  //탭메뉴 클릭할 때 실행
  $(".history .hisNavWrap .hisNav > li a").on("click", function(e) {
    e.preventDefault();
    let tabId = $(this).attr("href");
    activateTab(tabId, true);
  });

  //페이지 로드 했을 때 탭메뉴 선택
  if (tabName) {
    const tabTop = $('.history').offset().top;
    requestAnimationFrame(function() {
      $('html, body').scrollTop(tabTop - 100);
    });
    activateTab(`#${tabName}`);
  } else {
    activateTab('first');
  }

  //뒤로가기, 앞으로가기 버튼 눌렀을 때 탭메뉴 활성화 복원
  $(window).on('popstate', function() {
    const newTabName = getUrlParam();
    activateTab(newTabName ? `#${newTabName}` : 'first');
  });
}