draw_set_color(c_black);
draw_set_font(fnt_title);
draw_set_halign(fa_center)
draw_text(room_width/2, 50, "Instructions");

draw_set_font(fnt_instructionsbody);
draw_text(room_width/2, 200, "Select material from bottom\nDesign your bridge by dragging the material from point to point\nYou can delete beams by clicking on the trashcan then clicking on the beam you wish to delete\nOnce the bridge is completed, hit play to see if it worked\nTry to build a bridge that will provide a stable ride\nIf the bridge fails, try again!");

draw_text(room_width/3, 400, "Wood")
draw_text(room_width/2, 400, "Stone")
draw_text(room_width/3*2, 400, "Steel")

draw_text(room_width/2, 600, "When building bridges, it is important to balances the forces being exerted on the bridge\nThis can be done by using triangle patterns like the one below\nThis helps to divide the weight into smaller, more manageable loads");
