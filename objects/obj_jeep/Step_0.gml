if(obj_runbtn.physics_running && !place_empty(x,y-6)){
	phy_speed_x = 3;
}

if(x > 1024){
	physics_pause_enable(true);
	level_completed = true;
}


if(image_index == 7){
	image_speed = 0;
}