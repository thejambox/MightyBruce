//hurt(object,damage)
var dam = argument1

with argument0{
    _health -= dam
    if _health <= 0{
        var b,dir;
        dir = 90 - (sign(x - other.x)*35)
        b = part_type_create()
        part_type_sprite(b,sprite_index,0,0,1)
        part_type_speed(b,4,8,-0.1,0)
        part_type_direction(b,dir,dir,0,0)
        part_type_gravity(b,global.GRAV,270)
        part_type_life(b,60,60)
        part_type_color1(b,image_blend)
        part_type_orientation(b,0,0,choose(-20,-10,10,20),0,0)
        
        part_particles_create(global.p_sys,x,y,b,1)
        
        part_particles_clear(b)
        event_user(0)
    }
}
