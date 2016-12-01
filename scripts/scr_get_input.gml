///scr_get_input

//Check for keyboard input
right_movement_input = keyboard_check(ord('D')); 
left_movement_input = keyboard_check(ord('A'));  
up_movement_input = keyboard_check(ord('W')); ; 
down_movement_input = keyboard_check(ord('S')); 
dash_key_input = keyboard_check_pressed(vk_space);
attack_key_input = mouse_check_button_pressed(mb_left);
switch_weapons_key = keyboard_check_pressed(vk_tab);

// Get the axis
xaxis = (right_movement_input - left_movement_input); 
yaxis = (down_movement_input - up_movement_input);

/*
//Check for gamepad input
if(gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, .35); //Set the deadzone
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key_input = gamepad_button_check_pressed(0, gp_face1);
    attack_key_input = gamepad_button_check_pressed(0, gp_face3);
}
*/



