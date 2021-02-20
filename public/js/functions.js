function AutoComplete(name) {
    $("#" + name + "_name").autocomplete({
        source: function (request, response) {

            var searchText = extractLast(request.term);
            $.ajax({
                url: path + "/article/" + name + "/" + searchText,
                type: 'get',
                dataType: "json",
                success: function (data) {
                    response($.map(data, function (value, key) {
                        return {
                            label: value.name,
                            value: value.id
                        }
                    }));
                }
            });
        },
        select: function (event, ui) {
            var terms = split($('#' + name + '_name').val());

            terms.pop();

            terms.push(ui.item.label);

            terms.push("");
            $('#' + name + '_name').val("");
            $('.' + name + '-names').append("<div id=" + name + "_" + ui.item.value + " class=" + name + "-term>" + ui.item.label + "&nbsp;<i class='fa fa-close' style='cursor: pointer;' onclick=removeId(" + ui.item.value + ",'" + name + "')></i></div>");

            // Id
            terms = split($('#' + name).val());

            terms.pop();

            terms.push(ui.item.value);

            terms.push("");
            $('#' + name).val(terms.join(","));

            return false;
        }

    });
}

$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
        }
    });
    // Multiple select
    AutoComplete('tag');

    //add tag on pressing enter
    $('#tag_name').on('keypress', function (e) {
        if (e.which === 13) {
            e.preventDefault();
            //Disable textbox to prevent multiple submit
            $(this).attr("disabled", "disabled");

            //Create tag
            $.ajax({
                url: path + "/tag/storeAjax/" + $('#tag_name').val(),
                data: {name: $('#tag_name').val()},
                type: 'get',
                dataType: "json",
                success: function (data) {
                    var terms = split($('#tag_name').val());

                    terms.pop();

                    terms.push(data.name);

                    terms.push("");
                    $('#tag_name').val("");
                    $('.tag-names').append("<div id=" + "tag_" + data.id + " class=" + "tag-term>" + data.name + "&nbsp;<i class='fa fa-close' style='cursor: pointer;' onclick=removeId(" + data.id + ",'tag')></i></div>");

                    // Id
                    terms = split($('#tag').val());

                    terms.pop();

                    terms.push(data.id);

                    terms.push("");
                    $('#tag').val(terms.join(","));
                }
            });

            //Enable the textbox again if needed.
            $(this).removeAttr("disabled");
        }
    });
});

function split(val) {
    return val.split(/,\s*/);
}

function extractLast(term) {
    return split(term).pop();
}

//remove tag id from ids hidden input
function removeId(id, name) {
    ids = split($('#' + name).val());
    $('#' + name).val("");
    for (var i = 0; i < ids.length; i++) {
        if (ids[i] == id) {
            ids.splice(i, 1);
        }
    }
    $('#' + name).val(ids.join(","));

    var element = document.getElementById(name + "_" + id);
    element.parentNode.removeChild(element);
}

//remove image from article
function removeImage(image) {
    $.ajax({
        url: path + "/article/destroyImage/" + image,
        type: 'get',
        success: function (data) {
            $("#image-" + image).remove();
        }
    });
}