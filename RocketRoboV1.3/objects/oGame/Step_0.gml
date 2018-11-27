/// @desc Check Inputs
#region Input
kLeft        = keyboard_check(ord("A"));
kRight       = keyboard_check(ord("D"));
kUp          = keyboard_check(ord("W"));
kDown        = keyboard_check(ord("S"));
kDownP       = keyboard_check_pressed(ord("S"));
kJump        = keyboard_check_pressed(vk_space);
kJumpRelease = keyboard_check_released(vk_space);
kJumpHeld    = keyboard_check(vk_space);
kClick       = mouse_check_button_pressed(mb_left);
kRClick      = mouse_check_button_pressed(mb_right);
kRun         = keyboard_check_pressed(vk_lshift);
kTaunt       = keyboard_check_pressed(ord("T"));
#endregion