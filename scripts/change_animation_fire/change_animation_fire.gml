/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 095FE3BE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "change_animation_fire"
function change_animation_fire() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C495596
	/// @DnDParent : 095FE3BE
	/// @DnDArgument : "var" "horizontal_speed"
	/// @DnDArgument : "not" "1"
	if(!(horizontal_speed == 0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B0F2FCE
		/// @DnDParent : 2C495596
		/// @DnDArgument : "var" "horizontal_speed"
		/// @DnDArgument : "op" "2"
		if(horizontal_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0CEEAD5E
			/// @DnDParent : 3B0F2FCE
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "facing"
			facing = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67F0FD77
			/// @DnDParent : 3B0F2FCE
			/// @DnDArgument : "expr" "spr_fire_right_run"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_fire_right_run;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 613DC9A1
		/// @DnDParent : 2C495596
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 097673BB
			/// @DnDParent : 613DC9A1
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "facing"
			facing = -1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 107D8448
			/// @DnDParent : 613DC9A1
			/// @DnDArgument : "expr" "spr_fire_left_run"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_fire_left_run;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5141BA01
	/// @DnDParent : 095FE3BE
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DB72351
		/// @DnDParent : 5141BA01
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "value" "1"
		if(facing == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2BDE4250
			/// @DnDParent : 1DB72351
			/// @DnDArgument : "expr" "spr_fire_right"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_fire_right;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7386A14B
		/// @DnDParent : 5141BA01
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 667ADB23
			/// @DnDParent : 7386A14B
			/// @DnDArgument : "expr" "spr_fire_lef"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_fire_lef;
		}
	}
}