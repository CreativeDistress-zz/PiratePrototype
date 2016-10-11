///scr_attack_state
image_speed = obj_player.equiped_melee.attack_speed;

// Play the equiped weapons animation
switch (sprite_index){
    
    case spr_player_down:
        sprite_index = obj_player.equiped_melee.downattack;
        break;
        
    case spr_player_up:
          sprite_index = obj_player.equiped_melee.upattack;
        break;
        
    case spr_player_right:
        sprite_index = obj_player.equiped_melee.rightattack;
        break;
        
    case spr_player_left:
          sprite_index = obj_player.equiped_melee.leftattack;
        break; 
}

// Spawn the damage object based on what animation is currently playing
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
    dmg_obj.damage = obj_player.equiped_melee.damage;
    attacked = true;
}
