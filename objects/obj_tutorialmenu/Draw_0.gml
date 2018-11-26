draw_self();
switch (room){
		case 1: 
			draw_text(obj_tutorialmenu.x,obj_tutorialmenu.y-100, "The first material available is wood.\nWood is a cheap and plentiful resource. \nIt can make simple geometric patterns and with modern technology\n can even be used to make large curved members.\nDrawbacks of wood are that it will rot relatively quicker than other materials,\n it is susceptible to fire damage, and is generally weaker than alternatives.\nClick the tutorial to dismiss it.")
			break;
		case 2: 
			draw_text(obj_tutorialmenu.x,obj_tutorialmenu.y-100, "The next material is concrete/stone.\nConcrete/stone is a very reliable and durable material,\nit will last a lifetime and is stronger than wood. \nUnlike wood this material will not rot over time\n and is relatively unphased by fire. \nAn issue with concrete is the difficulty of constructing the bridge. \nCompared to other materials\n it is a much more time consuming and technical process.");
			break;
		case 3:  
			draw_text(obj_tutorialmenu.x,obj_tutorialmenu.y-100, "The final material is steel.\nSteel is a great material to use in \nlarge scale construction due to its high strength.\nSteel is more expensive and less available than wood\nbut if treated properly, it will last much longer.\nThe drawbacks of steel are the increased cost\n and its susceptibility to rust.")
			break;
   }