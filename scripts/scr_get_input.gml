///scr_get_input

//Check for keyboard input
right_movement_input = keyboard_check(vk_right); 
left_movement_input = keyboard_check(vk_left);  
up_movement_input = keyboard_check(vk_up); ; 
down_movement_input = keyboard_check(vk_down); 
dash_key_input = keyboard_check_pressed(ord('C'));
attack_key_input = keyboard_check_pressed(ord('X'));

// Get the axis
xaxis = (right_movement_input - left_movement_input); 
yaxis = (down_movement_input - up_movement_input);

//Check for gamepad input
if(gamepad_is_connected(0)){
    gamepad_set_axis_deadzone(0, .35); //Set the deadzone
    xaxis = gamepad_axis_value(0, gp_axislh);
    yaxis = gamepad_axis_value(0, gp_axislv);
    dash_key_input = gamepad_button_check_pressed(0, gp_face1);
    attack_key_input = gamepad_button_check_pressed(0, gp_face3);
}



