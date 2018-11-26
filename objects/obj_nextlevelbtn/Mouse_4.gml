if(obj_jeep.level_completed){
	instance_deactivate_all(true);
	cursor_sprite = -1;
	switch (room){
		case 1: room_goto(rm_leveltwo); break;
		case 2: room_goto(rm_levelthree); break;
		case 3: room_goto(rm_mainmenu); break;
   }
}