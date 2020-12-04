$(document).ready(function() {
    $('#autoWidth').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth').removeClass('cS-hidden');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth1').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth1').removeClass('cS-hidden1');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth2').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth2').removeClass('cS-hidden2');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth3').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth3').removeClass('cS-hidden3');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth4').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth4').removeClass('cS-hidden4');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth5').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth5').removeClass('cS-hidden5');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth6').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth6').removeClass('cS-hidden6');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth7').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth7').removeClass('cS-hidden7');
        }
    });
});
$(document).ready(function() {
    $('#autoWidth8').lightSlider({
        autoWidth: true,
        loop: true,
        onSliderLoad: function() {
            $('#autoWidth8').removeClass('cS-hidden8');
        }
    });
});

var ProductImg = document.getElementById("ProductImg");
var SmallImg = document.getElementsByClassName("small-img");

SmallImg[0].onclick = function() {
    ProductImg.src = SmallImg[0].src;
}
SmallImg[1].onclick = function() {
    ProductImg.src = SmallImg[1].src;
}
SmallImg[2].onclick = function() {
    ProductImg.src = SmallImg[2].src;
}
SmallImg[3].onclick = function() {
    ProductImg.src = SmallImg[3].src;
}
SmallImg[4].onclick = function() {
    ProductImg.src = SmallImg[4].src;
}
SmallImg[5].onclick = function() {
    ProductImg.src = SmallImg[5].src;
}
SmallImg[6].onclick = function() {
    ProductImg.src = SmallImg[6].src;
}