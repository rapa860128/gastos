// DOM Ready
$(function() {

    var $el, leftPos, newWidth;
        $mainNav2 = $("#example-two");
    
    /*
        EXAMPLE ONE
    */
    
    /* Add Magic Line markup via JavaScript, because it ain't gonna work without */
    $("#example-one").append("<li id='magic-line'></li>");
    
    /* Cache it */
    var $magicLine = $("#magic-line");
    
    $magicLine
        .width($(".current_page_item").width())
        .css("left", $(".current_page_item a").position().left)
        .data("origLeft", $magicLine.position().left)
        .data("origWidth", $magicLine.width());
        
    $("#example-one li").find("a").hover(function() {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();
        
        $magicLine.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function() {
        $magicLine.stop().animate({
            left: $magicLine.data("origLeft"),
            width: $magicLine.data("origWidth")
        });    
    });

    /*
    =====================================
                  GREEN
    =====================================
     */    

    /* Add Magic Line markup via JavaScript, because it ain't gonna work without */
    $("#example-green").append("<li id='magic-linegr'></li>");

    /* Cache it */
    var $magicLinegr = $("#magic-linegr");

    $magicLinegr
        .width($(".current_page_itemgr").width())
        .css("left", $(".current_page_itemgr a").position().left)
        .data("origLeft", $magicLinegr.position().left)
        .data("origWidth", $magicLinegr.width());

    $("#example-green li").find("a").hover(function () {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();

        $magicLinegr.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function () {
        $magicLinegr.stop().animate({
            left: $magicLinegr.data("origLeft"),
            width: $magicLinegr.data("origWidth")
        });
    });

    /*
    =====================================
    RED
    =====================================
    */

    /* Add Magic Line markup via JavaScript, because it ain't gonna work without */
    $("#example-red").append("<li id='magic-linered'></li>");

    /* Cache it */
    var $magicLinered = $("#magic-linered");

    $magicLinered
        .width($(".current_page_itemred").width())
        .css("left", $(".current_page_itemred a").position().left)
        .data("origLeft", $magicLinered.position().left)
        .data("origWidth", $magicLinered.width());

    $("#example-red li").find("a").hover(function () {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();

        $magicLinered.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function () {
        $magicLinered.stop().animate({
            left: $magicLinered.data("origLeft"),
            width: $magicLinered.data("origWidth")
        });
    });


    /*
    =====================================
    BLACK
    =====================================
    */

    /* Add Magic Line markup via JavaScript, because it ain't gonna work without */
    $("#example-black").append("<li id='magic-lineblack'></li>");

    /* Cache it */
    var $magicLineblack = $("#magic-lineblack");

    $magicLineblack
        .width($(".current_page_itemblack").width())
        .css("left", $(".current_page_itemblack a").position().left)
        .data("origLeft", $magicLineblack.position().left)
        .data("origWidth", $magicLineblack.width());

    $("#example-black li").find("a").hover(function () {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();

        $magicLineblack.stop().animate({
            left: leftPos,
            width: newWidth
        });
    }, function () {
        $magicLineblack.stop().animate({
            left: $magicLineblack.data("origLeft"),
            width: $magicLineblack.data("origWidth")
        });
    });

    
    /*
    EXAMPLE TWO
    */
    
    $mainNav2.append("<li id='magic-line-two'></li>");
    
    var $magicLineTwo = $("#magic-line-two");
    
    $magicLineTwo
        .width($(".current_page_item_two").width())
        .height($mainNav2.height())
        .css("left", $(".current_page_item_two a").position().left)
        .data("origLeft", $(".current_page_item_two a").position().left)
        .data("origWidth", $magicLineTwo.width())
        .data("origColor", $(".current_page_item_two a").attr("rel"));
                
    $("#example-two a").hover(function() {
        $el = $(this);
        leftPos = $el.position().left;
        newWidth = $el.parent().width();
        $magicLineTwo.stop().animate({
            left: leftPos,
            width: newWidth,
            backgroundColor: $el.attr("rel")
        })
    }, function() {
        $magicLineTwo.stop().animate({
            left: $magicLineTwo.data("origLeft"),
            width: $magicLineTwo.data("origWidth"),
            backgroundColor: $magicLineTwo.data("origColor")
        });    
    });
    
    /* Kick IE into gear */
    $(".current_page_item_two a").mouseenter();
    
});