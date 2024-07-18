const Icons = document.querySelectorAll('.midNav ul li div');
const modal = document.querySelector('.modal');
const IframeContainer = document.querySelector('.pdf-container');
Icons.forEach(icon => {
    icon.addEventListener('click', (e) => {
        modal.classList.add('open')
    })
})

modal.addEventListener('click', (e) => {
    if (e.target === modal) {
        modal.classList.remove('open')
    }
})

modal.querySelectorAll('button').forEach(el => {
    el.addEventListener('click', (e) => {
        modal.classList.remove('open')
        // src 설정
        // IframeContainer.querySelector('iframe').src = ''
        IframeContainer.classList.add('open');
    })
})
IframeContainer.querySelector('.cancel').addEventListener('click', (e) => {
    IframeContainer.classList.remove('open');

})