///scr_attack_state
image_speed = .6;

switch (sprite_index){
    
    case spr_player_down:
        sprite_index = spr_player_atk_down;
        break;
        
    case spr_player_up:
        sprite_index = spr_player_atk_up;
        break;
        
    case spr_player_right:
        sprite_index = spr_player_atk_right;
        break;
        
    case spr_player_left:
        sprite_index = spr_player_atk_left;
        break; 
}

if(image_index >= 3 and attacked == false){

    var spawnx = 0;
    var spawny = 0;

    switch (sprite_index){
    
        case spr_player_atk_down:
            spawnx = x;
            spawny = y + 14;
            break;
            
        case spr_player_atk_up:
            spawnx = x;
            spawny = y - 10;
            break;
            
        case spr_player_atk_right:
            spawnx = x + 12;
            spawny = y + 2;
            break;
            
        case spr_player_atk_left:
            spawnx = x - 12;
            spawny = y + 2;
            break;
    }

    audio_play_sound(snd_sword_attack, 10, false);
    var dmg_obj = instance_create(spawnx, spawny, obj_damage);
    dmg_obj.creator = id;
    attacked = true;
}
