jQuery.noConflict();
jQuery(document).ready(function() {
    var docked = 0;

    jQuery("#dock li ul").height(jQuery(window).height());

    jQuery("#dock .dock").click(function() {
        jQuery(this).parent().parent().addClass("docked").removeClass("free");

        docked += 1;
        var dockH = (jQuery(window).height()) / docked
        var dockT = 0;

        jQuery("#dock li ul.docked").each(function() {
            jQuery(this).height(dockH).css("top", dockT + "px");
            dockT += dockH;
        });
        jQuery(this).parent().find(".undock").show();
        jQuery(this).hide();

        if (docked > 0)
            jQuery("#content").css("margin-left", "250px");
        else
            jQuery("#content").css("margin-left", "60px");
    });

    jQuery("#dock .undock").click(function() {
        jQuery(this).parent().parent().addClass("free").removeClass("docked")
                    .animate({ left: "-180px" }, 200).height(jQuery(window).height()).css("top", "0px");

        docked = docked - 1;
        var dockH = (jQuery(window).height()) / docked
        var dockT = 0;

        jQuery("#dock li ul.docked").each(function() {
            jQuery(this).height(dockH).css("top", dockT + "px");
            dockT += dockH;
        });
        jQuery(this).parent().find(".dock").show();
        jQuery(this).hide();

        if (docked > 0)
            jQuery("#content").css("margin-left", "250px");
        else
            jQuery("#content").css("margin-left", "60px");
    });

    jQuery("#dock li").hover(function() {
        jQuery(this).find("ul").animate({ left: "40px" }, 200);
    }, function() {
        jQuery(this).find("ul.free").animate({ left: "-180px" }, 200);
    });
}); 