/*
    set_colors(mode)

    0 = player
    1 = walls
    2 = hud
    3 = bullets
    4 = pickups
*/
switch argument0
{
case 0: // standard
    global.c[0] = c_orange//player
    global.c[1] = c_maroon//walls
    global.c[2] = c_white//hud
    global.c[3] = c_red//bullets
    global.c[4] = c_yellow//pickups
    global.c[5] = c_black//text
    //foe colors
    global.fc[0] = c_teal//one
    global.fc[1] = c_green//two
    global.fc[2] = c_red//mad
    break;

case 1://night vision
    global.c[0] = make_color_hsv(78,238,255)//player
    global.c[1] = make_color_hsv(78,238,170)//walls
    global.c[2] = make_color_hsv(78,238,200)//hud
    global.c[3] = make_color_hsv(78,238,240)//bullets
    global.c[4] = make_color_hsv(78,238,255)//pickups
    global.c[5] = c_black//text
    //foe colors
    global.fc[0] = make_color_hsv(78,238,210)//one
    global.fc[1] = make_color_hsv(78,238,210)//two
    global.fc[2] = c_white//mad
    break;

case 2://b+w
    global.c[0] = c_white//player
    global.c[1] = c_gray//walls
    global.c[2] = c_gray//hud
    global.c[3] = c_white//bullets
    global.c[4] = c_white//pickups
    global.c[5] = c_black//text
    //foe colors
    global.fc[0] = c_gray//one
    global.fc[1] = c_ltgray//two
    global.fc[2] = c_dkgray//mad
    break;

case 3://sepia
    global.c[0] = make_color_hsv(16,176,122)//player
    global.c[1] = make_color_hsv(16,176,60)//walls
    global.c[2] = make_color_hsv(16,176,86)//hud
    global.c[3] = make_color_hsv(16,176,179)//bullets
    global.c[4] = make_color_hsv(16,176,220)//pickups
    global.c[5] = make_color_hsv(16,176,20)//text
    //foe colors
    global.fc[0] = make_color_hsv(16,176,90)//one
    global.fc[1] = make_color_hsv(16,176,111)//two
    global.fc[2] = make_color_hsv(16,176,40)//mad
    break;


case 4://inverse
    global.c[0] = c_white - c_orange//player
    global.c[1] = c_white - c_maroon//walls
    global.c[2] = c_white - c_white//hud
    global.c[3] = c_white - c_red//bullets
    global.c[4] = c_white - c_yellow//pickups
    global.c[5] = c_white - c_black//text
    //foe colors
    global.fc[0] = c_white - c_teal//one
    global.fc[1] = c_white - c_green//two
    global.fc[2] = c_white - c_red//mad
    break;
    
case 5://random
    global.c[0] = make_color_hsv(random(255),255,255)//player
    global.c[1] = make_color_hsv(random(255),255,255)//walls
    global.c[2] = make_color_hsv(random(255),255,255)//hud
    global.c[3] = make_color_hsv(random(255),255,255)//bullets
    global.c[4] = make_color_hsv(random(255),255,255)//pickups
    global.c[5] = make_color_hsv(random(255),255,255)//text
    //foe colors
    global.fc[0] = make_color_hsv(random(255),255,255)//one
    global.fc[1] = make_color_hsv(random(255),255,255)//two
    global.fc[2] = make_color_hsv(random(255),255,255)//mad
    break;
}
