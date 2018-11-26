if(global.woodSelected){
	cursor_sprite = spr_wood;
	if(mouse_check_button_pressed(mb_left)){
		show_debug_message("Getting starting point for wood beam");
		start_nearest_joint = instance_nearest(mouse_x,mouse_y,obj_joint);
		//show_debug_message("x: " + start_nearest_joint.x + " y: " + start_nearest_joint.y);
		instance_create_depth(start_nearest_joint.x, start_nearest_joint.y, 0, obj_woodbeam);
	}
	if(mouse_check_button_released(mb_left)){
		show_debug_message("Getting end point for wood beam");
		end_nearest_joint = instance_nearest(mouse_x,mouse_y,obj_joint);
		//show_debug_message("x: " + end_nearest_joint.x + " y: " + end_nearest_joint.y);
		draw_sprite_pos(spr_wood,0, start_nearest_joint.x, start_nearest_joint.y, start_nearest_joint.x+100, start_nearest_joint.y+100, end_nearest_joint.x,end_nearest_joint.y, end_nearest_joint.x+100,end_nearest_joint.y+100,1)
	}
}

