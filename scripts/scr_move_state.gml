///scr_move_state
scr_get_input();

if(dash_key_input){
    if(obj_player_stats.stamina > 0){
        obj_player_stats.stamina--;
        state = scr_dash_state;
        alarm[0] = room_speed / 7;
        alarm[1] = 120;
    }
}

if(attack_key_input && currentWeapon == "MELEE"){
    image_index = 0; //reset the image index to 0.
    state = scr_attack_state;
}
if (attack_key_input && currentWeapon == "RANGED")
{
    script_execute(scr_shoot_gun);
}

if (switch_weapons_key)
{
    if (currentWeapon == "MELEE")
    {
        currentWeapon = "RANGED";
    }
    else
    {
        currentWeapon = "MELEE";
    }
}

// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if(xaxis == 0 and yaxis == 0){
    len = 0;    
} else {
    scr_get_face();
    len = spd;
}

// Get hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = .15;
if(len == 0) image_index = 0;

switch (face){
    
    case RIGHT:
      sprite_index = spr_player_right;
      break;
     
    case UP_RIGHT:
      break;
     
    case UP:
      sprite_index = spr_player_up;
      break;
      
    case UP_LEFT:
      break;
          
    case LEFT:
      sprite_index = spr_player_left;
      break;
      
    case DOWN_LEFT:
      break;
          
    case DOWN:
      sprite_index = spr_player_down;
      break;
      
    case DOWN_RIGHT:
      break;
}
