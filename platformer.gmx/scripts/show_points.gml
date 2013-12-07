// show_points(string,colour)

var value = "+"+string(argument0);
var colour = argument1;
var w = string_width(value);
var h = string_height(value);

//create surface
    var s=surface_create(w,h);
    surface_set_target(s);
    draw_clear_alpha(0,0);
    //draw value
    draw_set_color(colour);
    draw_text(0,0,value)
    //reset target
    surface_reset_target();
    //create sprite
    spr=sprite_create_from_surface(s,0,0,w,h,0,0,w/2,h/2);
    //clear surface
    surface_free(s);
    
//create particle
    var p;
    p = part_type_create()
    part_type_sprite(p,spr,0,0,0)
    part_type_blend(p,1)
    part_type_speed(p,5,5,-0.5,0)
    part_type_direction(p,90,90,0,0)
    part_type_life(p,30,30)
    
    part_particles_create(global.p_sys,x,y,p,1)
