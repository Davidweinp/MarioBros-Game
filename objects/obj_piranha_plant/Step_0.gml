/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 49A06B90
/// @DnDArgument : "script" "calc_enemy_movement"
/// @DnDSaveInfo : "script" "calc_enemy_movement"
script_execute(calc_enemy_movement);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CB31B5D
/// @DnDArgument : "var" "vertical_speed"
/// @DnDArgument : "op" "2"
if(vertical_speed > 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 49E2E83C
	/// @DnDParent : 7CB31B5D
	/// @DnDArgument : "script" "move_and_collision_enemy"
	/// @DnDSaveInfo : "script" "move_and_collision_enemy"
	script_execute(move_and_collision_enemy);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7893DAEB
	/// @DnDParent : 7CB31B5D
	/// @DnDArgument : "var" "vertical_speed"
	if(vertical_speed == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B50362D
		/// @DnDParent : 7893DAEB
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "starting_position"
		if(!(y == starting_position))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0F19AF59
			/// @DnDParent : 6B50362D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "y"
			y += 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 02C02386
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 492BAF07
	/// @DnDParent : 02C02386
	/// @DnDArgument : "expr" "vertical_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vertical_speed;
}