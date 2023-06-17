/// @description Draw

with (obj_background) {
	draw_set_color(c_black);
	draw_set_alpha(1);
	
	draw_primitive_begin(pr_trianglestrip);
		draw_vertex(bbox_left, bbox_top);
		var dir = point_direction(other.x, other.y, bbox_left, bbox_top);
		draw_vertex(x+lengthdir_x(other.shadowsize, dir), y+lengthdir_y(other.shadowsize, dir));
		
		draw_vertex(bbox_left, bbox_bottom);
		var dir = point_direction(other.x, other.y, bbox_left, bbox_bottom);
		draw_vertex(x+lengthdir_x(other.shadowsize, dir), y+lengthdir_y(other.shadowsize, dir));
		
		draw_vertex(bbox_right, bbox_top);
		var dir = point_direction(other.x, other.y, bbox_right, bbox_top);
		draw_vertex(x+lengthdir_x(other.shadowsize, dir), y+lengthdir_y(other.shadowsize, dir));
		
		draw_vertex(bbox_right, bbox_bottom);
		var dir = point_direction(other.x, other.y, bbox_right, bbox_bottom);
		draw_vertex(x+lengthdir_x(other.shadowsize, dir), y+lengthdir_y(other.shadowsize, dir));
		
	draw_primitive_end();
}