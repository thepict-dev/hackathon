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
    if ($('#apply1, #apply2, #apply3, #apply4, .confirmWrapper').is(':visible')) {
        // 모달이 열려있을 때는 메인 스크롤 막기
        return false;
    }
});

$('.rightButtons button, .mbGnb li button').click(function(){
   $('#apply_acsses').css('display', 'flex');
   lenis.stop();
   $('body').addClass('modal-open');
    
   // .appBottom에 대한 스크롤 이벤트 추가
   $('.appBottom, .confirmContainer').on('wheel touchmove', function(e) {
       e.stopPropagation();
   });
});

$('.appTop button').click(function(){
   $('.applyWrapper, .confirmWrapper').hide();
   $('body').removeClass('modal-open');
   
   // Lenis 스크롤 다시 시작
   lenis.start();
   
   // body에 추가된 이벤트 리스너 제거 (있다면)
   $('body').off('wheel touchmove');
   
   // .appBottom 스크롤 이벤트 제거
   $('.appBottom, .confirmContainer').off('wheel touchmove');

	location.reload(); // 페이지 새로고침
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
