/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7B5FB0AA
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" " get_player_input"
function  get_player_input() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A1135BD
	/// @DnDParent : 7B5FB0AA
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6CA9A50A
	/// @DnDParent : 7B5FB0AA
	/// @DnDArgument : "key" "vk_right"
	var l6CA9A50A_0;
	l6CA9A50A_0 = keyboard_check(vk_right);
	if (l6CA9A50A_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DFE1FCD
		/// @DnDParent : 6CA9A50A
		/// @DnDArgument : "expr" "walk_speed"
		/// @DnDArgument : "var" " horizontal_speed"
		 horizontal_speed = walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 72E8B8BB
	/// @DnDParent : 7B5FB0AA
	/// @DnDArgument : "key" "vk_left"
	var l72E8B8BB_0;
	l72E8B8BB_0 = keyboard_check(vk_left);
	if (l72E8B8BB_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04EBD51A
		/// @DnDParent : 72E8B8BB
		/// @DnDArgument : "expr" "-walk_speed"
		/// @DnDArgument : "var" " horizontal_speed"
		 horizontal_speed = -walk_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 3958DD25
	/// @DnDParent : 7B5FB0AA
	/// @DnDArgument : "key" "vk_up"
	var l3958DD25_0;
	l3958DD25_0 = keyboard_check_pressed(vk_up);
	if (l3958DD25_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 13635395
		/// @DnDParent : 3958DD25
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "jump"
		jump = true;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 1143A42E
	/// @DnDParent : 7B5FB0AA
	var l1143A42E_0;
	l1143A42E_0 = keyboard_check_pressed(vk_space);
	if (l1143A42E_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AC86803
		/// @DnDParent : 1143A42E
		/// @DnDArgument : "var" "fire"
		/// @DnDArgument : "value" "true"
		if(fire == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3B0718FF
			/// @DnDParent : 5AC86803
			/// @DnDArgument : "xpos" "facing*30"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "35"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_fire"
			/// @DnDSaveInfo : "objectid" "obj_fire"
			instance_create_layer(x + facing*30, y + 35, "Instances", obj_fire);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 1222BA1E
			/// @DnDParent : 5AC86803
			/// @DnDArgument : "soundid" "smw_fire"
			/// @DnDSaveInfo : "soundid" "smw_fire"
			audio_play_sound(smw_fire, 0, 0, 1.0, undefined, 1.0);
		}
	}
}