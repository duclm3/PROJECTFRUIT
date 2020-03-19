(function ($) {
    $(document).ready(function () {
        $.fn.customPaginate = function (options)
        {
            var paginationContainer = this;
            var itemsToPaginate;
            var defaults = {
                //itemsPerPage: số lượng sản phẩm trên một trang
                itemsPerPage: 4
            };
            var settings = [];
            //hợp nhất số 
            $.extend(settings, defaults, options);
            // danh sách đối tượng được dùng để phân trang
            itemsToPaginate = $(settings.itemsToPaginate);
            //số trang 
            var numberOfPaginationLinks = Math.ceil((itemsToPaginate.length / settings.itemsPerPage));
            // tạo chuối phân trang dạng ul li
            $("<ul class='pagination pager'></ul>").prependTo(paginationContainer);

            for (var index = 0; index < numberOfPaginationLinks; index++)
            {
                paginationContainer.find("ul").append("<li> <a href='#'>" + (index + 1) + " </a></li>");

            }       
            itemsToPaginate.filter(":gt(" + ((settings.itemsPerPage) - 1) + ")").hide();
            paginationContainer.find("ul li a").on('click', function () {
                // trang được click
                var linknumber = $(this).text();
                // nội dung ẩn 
                var itemsToHide = itemsToPaginate.filter(":lt(" + ((linknumber - 1) * settings.itemsPerPage) + ")");
                $.merge(itemsToHide, itemsToPaginate.filter(":gt(" + ((linknumber * settings.itemsPerPage) - 1) + ")"));
                itemsToHide.hide();
                //nội dung được hiện ra
                var itemsToShow = itemsToPaginate.not(itemsToHide);
               // hiển thị 
                itemsToShow.show();
            });
        };
    });
}(jQuery));

