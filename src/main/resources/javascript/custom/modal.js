$(function (a) {
    a.createModal = function (options) {
        var defaults = { title: "", message: "Your Message Goes Here!", closeButton: true, scrollable: false };
        var extendedOptions = a.extend({}, defaults, options);
        var cssClass = (extendedOptions.scrollable === true) ? 'scrollableModal' : "";

        var html = '<div class="modal fade" id="myModal">';
        html += '<div class="modal-dialog">';
        html += '<div class="modal-content">';
        html += '<div class="modal-header">';
        html += '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>';

        if (extendedOptions.title.length > 0) {
            html += '<h4 class="modal-title">' + extendedOptions.title + "</h4>"
        }

        html += "</div>";
        html += '<div class="modal-body ' + cssClass + '">';
        html += extendedOptions.message;
        html += "</div>";
        html += '<div class="modal-footer">';

        if (extendedOptions.closeButton === true) {
            html += '<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>'
        }

        html += "</div>";
        html += "</div>";
        html += "</div>";
        html += "</div>";
        a("body").prepend(html);
        a("#myModal").modal().on("hidden.bs.modal", function () {
            a(this).remove()
        })
    }
});

$(function () {
    $('.view-pdf').on('click', function () {
        var iframe = $(this).find('.pdf-preview').html();
        $.createModal({
            title: $(this).attr('title'),
            message: iframe,
            closeButton: true,
            scrollable: false
        });
        return false;
    });
});
