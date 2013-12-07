//change_weapon(points)

do{
    var w = floor(random(6))
}until w != global.last_weapon

global.last_weapon = w

if !instance_exists(obj_player) exit

var p = obj_player
var s = argument0*global.multi
global.points += s

p.reload = 0

switch w{
    case 0: // pistol
        p.weapon = obj_bullet
        p.shoot_delay = 30
        p.reload_delay = 0
        p._s_weapon = s_pistol
        display_text("PISTOL#+"+string(s),image_blend)
    break;
    
    case 1: //shotgun
        p.weapon = obj_shotgun
        p.shoot_delay = 40
        p.reload_delay = 20
        p._s_weapon = s_shotgun
        display_text("SHOTGUN#+"+string(s),image_blend)
    break;
    
    case 2: //rocket
        p.weapon = obj_rocket
        p.shoot_delay = 60
        p.reload_delay = 40
        p._s_weapon = s_rocket1
        display_text("BAZOOKA#+"+string(s),image_blend)
    break;
    
    case 3: //UZI
        p.weapon = obj_bullet
        p.shoot_delay = 6
        p.reload_delay = 0
        p._s_weapon = s_uzi
        display_text("UZI#+"+string(s),image_blend)
    break;
    
    case 4: //laser
        p.weapon = obj_laser
        p.shoot_delay = 50
        p.reload_delay = 40
        p._s_weapon = s_laser1
        display_text("LASER#+"+string(s),image_blend)
    break;
    
    case 5: //boomarang
        p.weapon = obj_boomarang
        p.shoot_delay = 30
        p.reload_delay = 0
        p._s_weapon = s_boomarang
        display_text("BOOMARANG#+"+string(s),image_blend)
    break;
}

