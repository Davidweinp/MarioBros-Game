/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 318AE50A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "change_animation_dino"
function change_animation_dino() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13AECF09
	/// @DnDParent : 318AE50A
	/// @DnDArgument : "var" "horizontal_speed"
	/// @DnDArgument : "op" "2"
	if(horizontal_speed > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6C303ED0
		/// @DnDParent : 13AECF09
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5BB8EFF6
		/// @DnDParent : 13AECF09
		/// @DnDArgument : "expr" "spr_dino_right"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_dino_right;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 726F6BEB
	/// @DnDParent : 318AE50A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0483AD62
		/// @DnDParent : 726F6BEB
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 735F3161
		/// @DnDParent : 726F6BEB
		/// @DnDArgument : "expr" "spr_dino_left"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_dino_left;
	}
}