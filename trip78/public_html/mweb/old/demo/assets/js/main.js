!function(s){"use strict";s("#navbar li").on("mouseenter",function(){s(this).find("ul").first().stop(!0,!0).delay(350).slideDown(500,"easeInOutQuad")}),s("#navbar li").on("mouseleave",function(){s(this).find("ul").first().stop(!0,!0).delay(100).slideUp(150,"easeInOutQuad")}),s(window).width()>992&&s(".navbar-arrow ul ul > li").has("ul").children("a").append(" <i class='arrow-indicator fa fa-angle-right'></i>"),s(".searchtoggl a").attr("id","searchtoggl"),s(function(){var e=s("#searchtoggl a"),i=s("#searchbar");s("#navbar li a").on("click",function(t){"searchtoggl"==s(this).attr("id")&&(i.is(":visible")?e.removeClass("fa-search-minus").addClass("fa-search"):e.removeClass("fa-search").addClass("fa-search-minus"),i.slideToggle(300,function(){}))})}),s(".searchtoggl a").attr("id","searchtoggl"),s(function(){var e=s("#searchtoggl a"),i=s("#searchbar");s(".header-social-links-2 li a").on("click",function(t){"searchtoggl"==s(this).attr("id")&&(i.is(":visible")?e.removeClass("fa-search-minus").addClass("fa-search"):e.removeClass("fa-search").addClass("fa-search-minus"),i.slideToggle(300,function(){}))})}),s(window).scroll(function(){s(window).scrollTop()>10?s(".navigation").addClass("navbar-sticky"):s(".navigation").removeClass("navbar-sticky")}),s(window).scroll(function(){s(window).scrollTop()>10?s(".tabs-navbar").addClass("navbar-sticky"):s(".tabs-navbar").removeClass("navbar-sticky")}),s("#responsive-menu").slicknav({duration:500,easingOpen:"easeInExpo",easingClose:"easeOutExpo",closedSymbol:'<i class="fa fa-plus"></i>',openedSymbol:'<i class="fa fa-minus"></i>',prependTo:"#slicknav-mobile",allowParentLinks:!0,label:""}),s(".range-slider-ui").each(function(){var e=s(this).attr("data-min"),i=s(this).attr("data-max"),t=(s(this).attr("data-min-name"),s(this).attr("data-max-name"),s(this).attr("data-unit"));s(this).slider({range:!0,min:e,max:i,values:[e,i],slide:function(e,i){e=e;var o=parseInt(i.values[0],10),a=parseInt(i.values[1],10);s(this).children(".min-value").text(o+" "+t),s(this).children(".max-value").text(a+" "+t),s(this).children(".current-min").val(o),s(this).children(".current-max").val(a)}})}),s("#datetimepicker1").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker2").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker3").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker4").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker5").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker6").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker7").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s("#datetimepicker8").datepicker({format:"dd/mm/yyyy",language:"es",autoclose:!0,todayHighlight:!0}),s(".package-slider").slick({infinite:!0,slidesToShow:3,slidesToScroll:1,arrows:!0,dots:!1,autoplay:!0,responsive:[{breakpoint:1e3,settings:{slidesToShow:2}},{breakpoint:500,settings:{slidesToShow:1}}]}),s(".deals-slider").slick({infinite:!0,slidesToShow:4,slidesToScroll:1,arrows:!0,autoplay:!0,dots:!1,responsive:[{breakpoint:1e3,settings:{slidesToShow:2}},{breakpoint:500,settings:{slidesToShow:1}}]}),s(".sale-slider").slick({infinite:!0,slidesToShow:3,slidesToScroll:1,arrows:!0,autoplay:!1,dots:!1,responsive:[{breakpoint:1e3,settings:{slidesToShow:2}},{breakpoint:600,settings:{slidesToShow:1}}]}),s(".flight-slider").slick({infinite:!0,slidesToShow:3,slidesToScroll:1,arrows:!1,autoplay:!1,dots:!1,speed:2e3,responsive:[{breakpoint:1e3,settings:{slidesToShow:2}},{breakpoint:600,settings:{slidesToShow:1}}]});const e=s(".banner-slider");e.slick({infinite:!1,slidesToShow:2,slidesToScroll:1,arrows:!0,autoplay:!0,speed:3e3,dots:!1,responsive:[{breakpoint:1100,settings:{slidesToShow:2}},{breakpoint:600,settings:{slidesToShow:1,arrows:!1}}]}),e.on("wheel",function(e){e.preventDefault(),e.originalEvent.deltaY<0?s(this).slick("slickNext"):s(this).slick("slickPrev")}),s(".partners-slider").slick({infinite:!0,slidesToShow:7,slidesToScroll:1,arrows:!1,autoplay:!0,dots:!1,responsive:[{breakpoint:1e3,settings:{slidesToShow:4}},{breakpoint:600,settings:{slidesToShow:2}}]}),s(".room-slider").slick({infinite:!0,slidesToShow:3,slidesToScroll:1,arrows:!0,dots:!1,autoplay:!1,responsive:[{breakpoint:1e3,settings:{slidesToShow:2}},{breakpoint:500,settings:{slidesToShow:1}}]}),s(".partners-slider-1").slick({infinite:!0,slidesToShow:8,slidesToScroll:1,arrows:!1,autoplay:!0,dots:!1,responsive:[{breakpoint:1e3,settings:{slidesToShow:4}},{breakpoint:500,settings:{slidesToShow:2}}]}),s(".sidebar-slider").slick({infinite:!0,slidesToShow:1,slidesToScroll:1,arrows:!0,autoplay:!0,dots:!1}),s(".slider-store").slick({slidesToShow:1,slidesToScroll:1,arrows:!1,fade:!0,asNavFor:".slider-thumbs"}),s(".slider-thumbs").slick({slidesToShow:3,slidesToScroll:1,asNavFor:".slider-store",dots:!1,centerMode:!0,arrows:!0,focusOnSelect:!0}),s(".slider-shop").slick({infinite:!0,autoplay:!0,arrows:!0,dots:!1,slidesToShow:4,slidesToScroll:1,responsive:[{breakpoint:900,settings:{slidesToShow:3,slidesToScroll:1,infinite:!0}},{breakpoint:767,settings:{slidesToShow:2,slidesToScroll:1,infinite:!0}},{breakpoint:480,settings:{slidesToShow:1,slidesToScroll:1,infinite:!0}}]}),s(".slider-testimonail").slick({infinite:!0,autoplay:!0,arrows:!1,dots:!1,slidesToShow:3,slidesToScroll:1,responsive:[{breakpoint:991,settings:{slidesToShow:2,slidesToScroll:1,infinite:!0}},{breakpoint:639,settings:{slidesToShow:1,slidesToScroll:1,infinite:!0}}]}),s("#contactform").validate({submitHandler:function(){s.ajax({url:"mail/contact.php",type:"POST",data:{name:s('input[name="full_name"]').val(),email:s('input[name="email"]').val(),phone:s('input[name="phone"]').val(),comments:s('textarea[name="comments"]').val()},success:function(e){s("#contactform-error-msg").html(e),s("#contactform")[0].reset()}})}}),s(".sidebar-sticky").stickit({screenMinWidth:992,top:60,zIndex:9995,className:"when-sticky-on",overflowScrolling:!0,extraHeight:0}),s(".sidebar-sticky.sidebar-sticky-extra-height").stickit({screenMinWidth:992,top:60,zIndex:9995,className:"when-sticky-on",overflowScrolling:!0,extraHeight:100}),s("#sidebar-sticky").stickit({screenMinWidth:992,top:80,zIndex:2,className:"when-sticky-on-id",overflowScrolling:!0,extraHeight:20}),s(document).on("click","#back-to-top, .back-to-top",function(){return s("html, body").animate({scrollTop:0},"500"),!1}),s(window).on("scroll",function(){s(window).scrollTop()>500?s("#back-to-top").fadeIn(200):s("#back-to-top").fadeOut(200)}),s(document).on("click","a.page-scroll",function(e){var i=s(this);s("html, body").stop().animate({scrollTop:s(i.attr("href")).offset().top},1500,"easeInOutExpo"),e.preventDefault()});new Swiper(".swiper-container",{loop:!0,speed:2e3,grabCursor:!0,watchSlidesProgress:!0,mousewheelControl:!0,keyboardControl:!0,navigation:{nextEl:".swiper-button-next",prevEl:".swiper-button-prev"},autoplay:{delay:3e3},fadeEffect:{crossFade:!0},on:{progress:function(){for(var s=0;s<this.slides.length;s++){var e=this.slides[s].progress*(.5*this.width);this.slides[s].querySelector(".slide-inner").style.transform="translate3d("+e+"px, 0, 0)"}},touchStart:function(){for(var s=0;s<this.slides.length;s++)this.slides[s].style.transition=""},setTransition:function(s){for(var e=0;e<this.slides.length;e++)this.slides[e].style.transition=s+"ms",this.slides[e].querySelector(".slide-inner").style.transition=s+"ms"}}})}(jQuery);