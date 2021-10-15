/*document.addEventListener('DOMContentLoaded',function(){
    M.AutoInit();
    var sidenav = M.sidenav.init();
    var carousel = M.Carousel.init({
        fullWidth : true,
        indicators : true,
        duration:100,
    });
});

autoplay();

function autoplay(){
    var carousel = M.Carousel.getInstance();
    carousel.next();
    setTimeout(autoplay, 2000);
}*/

$(document).ready(function(){
    $('.sidenav').sidenav();
    $('.carousel').carousel({
        full_width: true,
        indicators: true,
        duration: 100,
    });
});

autoplay();

function autoplay(){
    $('.carousel').carousel('next');
    setTimeout(autoplay, 4500);
}
