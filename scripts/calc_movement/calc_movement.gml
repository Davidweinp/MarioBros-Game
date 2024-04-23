/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 79D26C72
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "calc_movement"
function calc_movement() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42154518
	/// @DnDParent : 79D26C72
	/// @DnDArgument : "expr" "horizontal_speed*drag"
	/// @DnDArgument : "var" "horizontal_speed"
	horizontal_speed = horizontal_speed*drag;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4587BD05
	/// @DnDParent : 79D26C72
	/// @DnDArgument : "expr" "global.grav"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed += global.grav;
}