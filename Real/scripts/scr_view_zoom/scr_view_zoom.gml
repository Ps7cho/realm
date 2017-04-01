///scr_view_zoom(amount, view)
var amount = 1+argument[0];
var view = argument[1];

// limit zoom
if (view_wview[view] <= 320 && amount < 1) exit;
if (view_wview[view] >= 810 && amount > 1) exit;

// scale the view
view_wview[view] *= amount;
view_hview[view] *= amount;

