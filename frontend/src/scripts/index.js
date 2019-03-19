$('#navbarHeaderMenu').on('show.bs.collapse', function (event) {
  $('#navbarHeaderPhone').collapse('hide')
  if ($(event.target).closest('.navbar').hasClass('menu-opened')) {
    $(event.target).closest('.navbar').removeClass('menu-opened')
  }
  $(event.target).closest('.navbar').addClass('menu-opened')
})
$('#navbarHeaderMenu').on('hide.bs.collapse', function (event) {
  if ($(event.target).closest('.navbar').hasClass('menu-opened')) {
    $(event.target).closest('.navbar').removeClass('menu-opened')
  }
})
$('#navbarHeaderPhone').on('show.bs.collapse', function (event) {
  $('#navbarHeaderMenu').collapse('hide')
  if ($('nav.navbar').hasClass('menu-opened')) {
    $('nav.navbar').removeClass('menu-opened')
  }
})
$('.portfolio-filter-select-xs-sm select').selectpicker()
$(window).scroll(function () {
  if ($(this).scrollTop() > 300) {
    $('.to-top').fadeIn()
  } else {
    $('.to-top').fadeOut()
  }
})
$('.to-top').click(function () {
  $('html, body').animate({ scrollTop: 0 }, 600)
  return false
})
/*
$('.carousel-top').carousel({
  interval: false
})

function mobileCarousel (x) {
  if (x.matches) {
    $('.price-slider').carousel({
      interval: false
    })
  } else {
    //
  }
}
var x = window.matchMedia('(max-width: 767px)')
mobileCarousel(x)
x.addListener(mobileCarousel)
*/

$('#topCarouselSlider').owlCarousel({
  loop: true,
  margin: -1,
  autoplay: true,
  autoplayTimeout: 3000,
  autoplayHoverPause: true,
  items: 1,
  responsive: {
    0: {
      nav: true,
      dots: false,
      navText: ['<i class="fas fa-chevron-left fa-lg text-body" aria-hidden="true"></i>', '<i class="fas fa-chevron-right fa-lg text-body" aria-hidden="true"></i>']
    }
  }
})

function mobileCarousel (x) {
  if (x.matches) {
    if ($('.price-slider').hasClass('off')) {
      $('.price-slider').removeClass('off')
    }
    $('.price-slider').owlCarousel({
      loop: true,
      margin: -1,
      autoplay: false,
      items: 1,
      responsive: {
        0: {
          nav: true,
          dots: false,
          startPosition: 1,
          navText: ['<i class="fas fa-chevron-left fa-lg text-body" aria-hidden="true"></i>', '<i class="fas fa-chevron-right fa-lg text-body" aria-hidden="true"></i>']
        }
      }
    })
  } else {
    if (!$('.price-slider').hasClass('off')) {
      $('.price-slider').addClass('off').trigger('destroy.owl.carousel')
      $('.price-slider').find('.owl-stage-outer').children(':eq(0)').unwrap()
    }
  }
}
var x = window.matchMedia('(max-width: 767px)')
mobileCarousel(x)
x.addListener(mobileCarousel)

$('.navbar-nav>li>a').on('click', function () {
  $('.navbar-collapse').collapse('hide')
  if ($(this).attr('href').indexOf('#') !== -1) {
    if (location.pathname === '/') {
      var s = $(this).attr('href').split('#')
      if (s.length === 2 && s[1].length > 0 && $('#' + s[1]).length) {
        $('html, body').animate({
          scrollTop: $('#' + s[1]).offset().top
        }, 400)
        return false
      }
    }
  }
})

$(function () {
  var step = 6
  var offset = step
  $('#show_more_gallery').on('click', function (e) {
    e.preventDefault()
    $('input[name="filter-hidden"]').attr('value')
    $.ajax({
      url: 'assets/components/work/getparsejson.php',
      type: 'GET',
      dataType: 'json',
      data: {
        offset: offset,
        filter: $('#filter-hidden').attr('value')
      },
      success: function (data) {
        if (data.success) {
          $('#gallery_all').append(data.html)
          offset += step
          if (data.test_for === '0' || data.test_for === null || data.test_for === undefined || data.test_for === '') {
            $('#show_more_gallery').css('visibility', 'hidden')
          } else {
            $('#show_more_gallery').css('visibility', 'visible')
          }
        }
      }
    })
  })
  $('#portfolio-filter-select').on('change', function () {
    var filterValue = this.value
    $.ajax({
      url: 'assets/components/work/getparsejson.php',
      type: 'GET',
      dataType: 'json',
      data: {
        offset: 0,
        filter: filterValue
      },
      success: function (data) {
        if (data.success) {
          $('#gallery_all').html(data.html)
          offset = step
          $('#filter-hidden').attr('value', filterValue)
          $('#filter-hidden').val(filterValue)
          $('.btn-portfolio-filter').each(function () {
            if ($(this).hasClass('active')) {
              $(this).removeClass('active')
            }
            if ($(this).attr('value') === filterValue) {
              $(this).addClass('active')
            }
          })
          $('#portfolio-filter-select').val(filterValue)
          $('#portfolio-filter-select').selectpicker('render')
          if (data.test_for === '0' || data.test_for === null || data.test_for === undefined || data.test_for === '') {
            $('#show_more_gallery').css('visibility', 'hidden')
          } else {
            $('#show_more_gallery').css('visibility', 'visible')
          }
        }
      }
    })
  })
  $('.btn-portfolio-filter').on('click', function (e) {
    var filterValue = this.value
    e.preventDefault()
    $.ajax({
      url: 'assets/components/work/getparsejson.php',
      type: 'GET',
      dataType: 'json',
      data: {
        offset: 0,
        filter: filterValue
      },
      success: function (data) {
        if (data.success) {
          $('#gallery_all').html(data.html)
          offset = step
          $('#filter-hidden').attr('value', filterValue)
          $('#filter-hidden').val(filterValue)
          $('.btn-portfolio-filter').each(function () {
            if ($(this).hasClass('active')) {
              $(this).removeClass('active')
            }
            if ($(this).attr('value') === filterValue) {
              $(this).addClass('active')
            }
          })
          $('#portfolio-filter-select').val(filterValue)
          $('#portfolio-filter-select').selectpicker('render')
          if (data.test_for === '0' || data.test_for === null || data.test_for === undefined || data.test_for === '') {
            $('#show_more_gallery').css('visibility', 'hidden')
          } else {
            $('#show_more_gallery').css('visibility', 'visible')
          }
        }
      }
    })
  })
})

$(document).ready(function () { $('body').animate({opacity: 1}, 500) })

$('#orderPortfolio').submit(function (event) {
  var formData = {
    'name': $('#order-name').val(),
    'phone': $('#order-phone').val(),
    'formtype': 'orderportfolio'
  }
  $.ajax({
    type: 'POST',
    url: 'assets/components/work/order.php',
    data: formData,
    dataType: 'json'
  })
    .done(function (data) {
      if (data['success']) {
        $.fancybox.open({
          src: '#hidden-result-message',
          type: 'inline',
          autoSize: false,
          scrolling: false,
          animationEffect: 'fade'
        })
        $('#order-name').val('')
        $('#order-phone').val('')
      }
    })
  event.preventDefault()
})

window.orderPackage = function (type, header, price) {
  $.fancybox.open({
    src: '#hidden-order-package',
    type: 'inline',
    autoSize: false,
    scrolling: false,
    animationEffect: 'fade',
    touch: {
      vertical: false
    },
    beforeLoad: function (instance, slide) {
      $('.one-message').text(header)
      $('#order-package-type').val(type)
      $('#order-package-package').val(header)
      $('#order-package-name').val('')
      $('#order-package-phone').val('')
      $('.mask-phone').inputmask({'mask': '+38(099) 999 99 99', clearMaskOnLostFocus: false})
      $('#orderIndexPackage').submit(function (event) {
        var formData = {
          'name': $('#order-package-name').val(),
          'phone': $('#order-package-phone').val(),
          'type': $('#order-package-type').val(),
          'package': $('#order-package-package').val(),
          'formtype': 'orderindexpackage'
        }
        $.ajax({
          type: 'POST',
          url: 'assets/components/work/order.php',
          data: formData,
          dataType: 'json'
        })
          .done(function (data) {
            if (data['success']) {
              $('#order-package-name').val('')
              $('#order-package-phone').val('')
              $('#order-package-type').val('')
              $('#order-package-package').val('')
              $.fancybox.close()
              $.fancybox.open({
                src: '#hidden-result-message',
                type: 'inline',
                autoSize: false,
                scrolling: false,
                animationEffect: 'fade'
              })
            }
          })
        event.preventDefault()
      })
    }
  })
}
window.orderCertificate = function () {
  $.fancybox.open({
    src: '#hidden-certificate',
    type: 'inline',
    autoSize: false,
    scrolling: false,
    animationEffect: 'fade',
    touch: {
      vertical: false
    },
    beforeLoad: function (instance, slide) {
      $('#order-сertificate-name').val('')
      $('#order-сertificate-phone').val('')
      $('#order-сertificate-name-who').val('')
      $('#order-сertificate-phone-who').val('')
      $('#order-сertificate-text').val('')
      $('.mask-phone').inputmask({'mask': '+38(099) 999 99 99', clearMaskOnLostFocus: false})
      $('#orderIndexCertificate').submit(function (event) {
        var formData = {
          'name': $('#order-сertificate-name').val(),
          'phone': $('#order-сertificate-phone').val(),
          'name-who': $('#order-сertificate-name-who').val(),
          'phone-who': $('#order-сertificate-phone-who').val(),
          'text': $('#order-сertificate-text').val(),
          'formtype': 'orderindexcertificate'
        }
        $.ajax({
          type: 'POST',
          url: 'assets/components/work/order.php',
          data: formData,
          dataType: 'json'
        })
          .done(function (data) {
            if (data['success']) {
              $('#order-сertificate-name').val('')
              $('#order-сertificate-phone').val('')
              $('#order-сertificate-name-who').val('')
              $('#order-сertificate-phone-who').val('')
              $('#order-сertificate-text').val('')
              $.fancybox.close()
              $.fancybox.open({
                src: '#hidden-result-message',
                type: 'inline',
                autoSize: false,
                scrolling: false,
                animationEffect: 'fade'
              })
            }
          })
        event.preventDefault()
      })
    }
  })
}
window.orderPhotocourse = function () {
  $.fancybox.open({
    src: '#hidden-photocourse',
    type: 'inline',
    autoSize: false,
    scrolling: false,
    animationEffect: 'fade',
    touch: {
      vertical: false
    },
    beforeLoad: function (instance, slide) {
      $('#order-photocourse-name').val('')
      $('#order-photocourse-phone').val('')
      $('.mask-phone').inputmask({'mask': '+38(099) 999 99 99', clearMaskOnLostFocus: false})
      $('#orderIndexPhotocourse').submit(function (event) {
        var formData = {
          'name': $('#order-photocourse-name').val(),
          'phone': $('#order-photocourse-phone').val(),
          'formtype': 'orderindexphotocourse'
        }
        $.ajax({
          type: 'POST',
          url: 'assets/components/work/order.php',
          data: formData,
          dataType: 'json'
        })
          .done(function (data) {
            if (data['success']) {
              $('#order-photocourse-name').val('')
              $('#order-photocourse-phone').val('')
              $.fancybox.close()
              $.fancybox.open({
                src: '#hidden-result-message',
                type: 'inline',
                autoSize: false,
                scrolling: false,
                animationEffect: 'fade'
              })
            }
          })
        event.preventDefault()
      })
    }
  })
}
$('.mask-phone-lost').inputmask({'mask': '+38(099) 999 99 99', clearMaskOnLostFocus: true})
