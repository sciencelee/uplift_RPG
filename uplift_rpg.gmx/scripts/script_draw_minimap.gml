
xformula = (x/room_width) * 150 + view_xview[0];
yformula = (y/room_height) * 100 + view_yview[0];

draw_set_alpha(0.1);
draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+150,view_yview[0] +100,false); 
draw_rectangle(view_xview[0],view_yview[0],view_xview[0]+150,view_yview[0] +100,true); 

draw_set_colour(c_red);
draw_set_alpha(0.4);
//draw_circle(xformula,yformula,argument0, false);
draw_rectangle(xformula-(400/room_width)*150, yformula-(304/room_height)*100,xformula+(400/room_width)*150, yformula+(304/room_height)*100,true)
draw_set_alpha(0.8)
