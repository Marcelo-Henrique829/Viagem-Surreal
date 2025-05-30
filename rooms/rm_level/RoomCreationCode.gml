
window_set_cursor(cr_none)
var camera_x_ = camera_get_view_x(view_camera[0]);
var camera_y_ = camera_get_view_y(view_camera[0]);
global.sq_out =layer_sequence_create("transition", camera_x_, camera_y_, sq_out);