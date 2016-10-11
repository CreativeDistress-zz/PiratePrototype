///scr_dash_state

//If we are not moving, dash in the player forward direction
if(len == 0){
    dir = face * 45;
}

len = spd * 4;

// Get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Apply movement
phy_position_x += hspd;
phy_position_y += vspd;
        
// Create fade effect
var fade = instance_create(x, y, obj_fade_effect);
fade.sprite_index = sprite_index;
fade.image_index = image_index;
fade.image_blend = c_aqua;

    


