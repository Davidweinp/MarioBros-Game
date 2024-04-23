/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 011E8F3A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calc_enemy_movement"
function calc_enemy_movement() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B8B660B
	/// @DnDParent : 011E8F3A
	/// @DnDArgument : "var" "facing"
	/// @DnDArgument : "value" "1"
	if(facing == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 49A3A8A9
		/// @DnDParent : 1B8B660B
		/// @DnDArgument : "expr" "walk_speed"
		/// @DnDArgument : "var" "horizontal_speed"
		horizontal_speed = walk_speed;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 56C69CC5
	/// @DnDParent : 011E8F3A
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2204A7CE
		/// @DnDParent : 56C69CC5
		/// @DnDArgument : "expr" "-walk_speed"
		/// @DnDArgument : "var" "horizontal_speed"
		horizontal_speed = -walk_speed;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CEADDED
	/// @DnDParent : 011E8F3A
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed += global.grav;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B2E539A
	/// @DnDParent : 011E8F3A
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "jump"
	jump = false;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AC1395A
	/// @DnDParent : 011E8F3A
	/// @DnDArgument : "var" "jump_speed"
	/// @DnDArgument : "op" "2"
	if(jump_speed > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3159C9E9
		/// @DnDParent : 6AC1395A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "jump"
		jump = true;
	}
}