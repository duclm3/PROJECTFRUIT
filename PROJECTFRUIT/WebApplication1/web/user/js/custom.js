(function ($) {
$(document).ready(function () {
//    paging: là class bên index chứa chuỗi phân trang
    $(".paging").customPaginate({
//            col-md-3: là class bên index chứa thông tin sản phẩm
        itemsToPaginate: ".col-md-3"
    });
});
}(jQuery));

