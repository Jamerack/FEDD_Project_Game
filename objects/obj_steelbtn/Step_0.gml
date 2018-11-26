if(global.steelSelected && !obj_runbtn.physics_running){
	if(mouse_check_button_pressed(mb_left)){
		show_debug_message("Getting starting point for steel beam");
		if(point_distance(instance_nearest(mouse_x,mouse_y,obj_walljoint).x,instance_nearest(mouse_x,mouse_y,obj_walljoint).y,mouse_x,mouse_y) < point_distance(instance_nearest(mouse_x,mouse_y,obj_joint).x,instance_nearest(mouse_x,mouse_y,obj_joint).y,mouse_x,mouse_y)){
			start_nearest_joint = instance_nearest(mouse_x,mouse_y,obj_walljoint);
			show_debug_message("wall joint used");
			start_nearest_joint.used = true;
		}
		else{
			start_nearest_joint = instance_nearest(mouse_x,mouse_y,obj_joint);
			show_debug_message("regular joint used");
			start_nearest_joint.used = true;
		}
		beam = instance_create_depth(start_nearest_joint.x, start_nearest_joint.y-4, 0, obj_steelbeam);
		ds_list_add(start_nearest_joint.connections,beam);
	}
	if(mouse_check_button_released(mb_left)){
		show_debug_message("Getting end point for steel beam");
		if(instance_nearest(mouse_x,mouse_y,obj_joint) != start_nearest_joint){
			end_nearest_joint = instance_nearest(mouse_x,mouse_y,obj_joint);
			show_debug_message("found joint");
		}else{
			end_nearest_joint = instance_nearest(mouse_x+sprite_get_width(spr_steel),mouse_y,obj_joint);
		}
		end_nearest_joint.used = true;
		ds_list_add(end_nearest_joint.connections,beam);
		beam.image_angle = point_direction(start_nearest_joint.x, start_nearest_joint.y,end_nearest_joint.x, end_nearest_joint.y);
		beam.phy_rotation = -point_direction(start_nearest_joint.x, start_nearest_joint.y,end_nearest_joint.x, end_nearest_joint.y);
		if(beam.image_angle > 0 && beam.image_angle < 90){
			beam.x+=3;
			beam.y-=3;
		}else if(beam.image_angle > 90 && beam.image_angle < 180){
			beam.x-=6;
			beam.y+=1;
		}else if(beam.image_angle > 180 && beam.image_angle < 270){
			beam.y+=8;
		}else if(beam.image_angle > 270 && beam.image_angle < 360){
			beam.x+=6;
			beam.y+=4;
		}
		start_joint = physics_joint_revolute_create(beam,start_nearest_joint,start_nearest_joint.x, start_nearest_joint.y,0,0,false,0,0,0,true);
		end_joint = physics_joint_revolute_create(beam,end_nearest_joint,end_nearest_joint.x, end_nearest_joint.y,0,0,false,0,0,0,true);
		connecting_joint = physics_joint_distance_create(start_nearest_joint,end_nearest_joint,start_nearest_joint.x,start_nearest_joint.y,end_nearest_joint.x,end_nearest_joint.y,true);
		ds_list_add(beam.joints,start_nearest_joint);
		ds_list_add(beam.joints,end_nearest_joint);
		ds_list_add(obj_runbtn.bridge,beam);
	}
}
