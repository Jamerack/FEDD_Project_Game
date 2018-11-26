if(obj_trashcanbtn.delete_mode){
	
	index = ds_list_find_index(joints[| 0].connections, self);
	ds_list_delete(joints[| 0].connections, index);
	if(ds_list_empty(joints[| 0].connections)){
		joints[| 0].used = false;
	}

	index = ds_list_find_index(joints[| 1].connections, self);
	ds_list_delete(joints[| 1].connections, index);
	if(ds_list_empty(joints[| 1].connections)){
		joints[| 1].used = false;
	}

	instance_destroy(self);
}
