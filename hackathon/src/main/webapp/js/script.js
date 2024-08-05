// 헤더 스크롤 이벤트
function handleHeaderScroll() {
  const header = document.querySelector('header');
  const scrollPosition = window.scrollY || window.pageYOffset;

  if (scrollPosition > 50) {
      header.classList.add('active');
  } else {
      header.classList.remove('active');
  }
}
// 스크롤 이벤트 리스너 등록
window.addEventListener('scroll', handleHeaderScroll);
// 페이지 로드 시 초기 상태 확인
window.addEventListener('load', handleHeaderScroll);

// 모바일 메뉴
$('.headerInner > button').click(function(){
  $('.mbNavWrap').show();
});
$('.mbNavTop button').click(function(){
  $('.mbNavWrap').hide();
});

function openClose() {
  $(".sizePopup").toggle();
}

$("#attach_file").on('change',function(){
  var fileName = $("#attach_file").val();
  $(".upload-name").val(fileName);
});


const lenis = new Lenis()

function raf(time) {
    lenis.raf(time)
    requestAnimationFrame(raf)
}

requestAnimationFrame(raf)

lenis.on('scroll', ({ scroll, limit, velocity, direction, progress }) => {
    if ($('#apply1, #apply2, #apply3, #apply4').is(':visible')) {
        // 모달이 열려있을 때는 메인 스크롤 막기
        return false;
    }
});

$('.rightButtons button').click(function(){
   $('#apply1').css('display', 'flex');
	lenis.stop();
    $('body').addClass('modal-open');
    
    // 모달 내부 스크롤만 허용
    lenis.options.touchMultiplier = 0;
    lenis.options.mouseMultiplier = 0;
    
    // .appBottom에 대한 스크롤 이벤트 추가
    $('.appBottom').on('wheel touchmove', function(e) {
        e.stopPropagation();
    });
});
$('.appTop button').click(function(){
   $('.applyWrapper').hide();
    $('body').removeClass('modal-open');
    
    // Lenis 스크롤 설정 복원
    lenis.options.touchMultiplier = 2;
    lenis.options.mouseMultiplier = 1;
    
    // .appBottom 스크롤 이벤트 제거
    $('.appBottom').off('wheel touchmove');
});

//탭
const tabItem = document.querySelectorAll('.tabNav li');
const tabInner = document.querySelectorAll('.tabInner');

function activateTab(items, index) {
    	tabInner.forEach((inner) => {
        inner.classList.remove('active');
    });

    items.forEach((item) => {
        item.classList.remove('active');
    });

    items[index].classList.add('active');
    tabInner[index].classList.add('active');
}

tabItem.forEach((tab, idx) => {
    tab.addEventListener('click', function() {
        activateTab(tabItem, idx);
    });
});

// 메인 스와이퍼
const swiper = new Swiper('.swiper', {
  speed: 2000,
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
});
// 사이트맵 모달
// $('.gnbRight button').click(function(){
//   $('.siteMap').show();
// });
// $('.siteMapTop button').click(function(){
//   $('.siteMap').hide();
// });

//탭
// const tabItem = document.querySelectorAll('.tabNav li');
// const tabInner = document.querySelectorAll('.tabInner');

// function activateTab(items, index) {
//     tabInner.forEach((inner) => {
//         inner.classList.remove('active');
//     });

//     items.forEach((item) => {
//         item.classList.remove('active');
//     });

//     items[index].classList.add('active');
//     tabInner[index].classList.add('active');
// }

// tabItem.forEach((tab, idx) => {
//     tab.addEventListener('click', function() {
//         activateTab(tabItem, idx);
//     });
// });

// 예약신청 모달 열기
// $('.bookingBtn button').click(function(){
//   $('.modal').show();
// });
// $('.modalWrapper button').click(function(){
//   $('.modal').hide();
// });
