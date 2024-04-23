/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D8C05BE
/// @DnDArgument : "var" "obj_mario.x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "x"
if(obj_mario.x <= x)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 753A08A8
	/// @DnDParent : 1D8C05BE
	/// @DnDArgument : "expr" "spr_bullet_bill_left"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_bullet_bill_left;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2D1A31A4
	/// @DnDParent : 1D8C05BE
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "facing"
	facing = -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 18962C3A
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12A092CB
	/// @DnDParent : 18962C3A
	/// @DnDArgument : "expr" "spr_bullet_bill_right"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_bullet_bill_right;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60382F41
	/// @DnDParent : 18962C3A
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "facing"
	facing = 1;
}