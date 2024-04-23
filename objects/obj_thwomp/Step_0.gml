/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 338F6056
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "in_range"
in_range = false;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5386A8A7
/// @DnDArgument : "var" "obj_mario.x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "x - 125"
if(obj_mario.x > x - 125)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FE7EAA6
	/// @DnDParent : 5386A8A7
	/// @DnDArgument : "var" "obj_mario.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "x + 125"
	if(obj_mario.x < x + 125)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AC0ED6B
		/// @DnDParent : 4FE7EAA6
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "in_range"
		in_range = true;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BDEAC9D
/// @DnDArgument : "var" "in_range"
/// @DnDArgument : "value" "true"
if(in_range == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4816E427
	/// @DnDParent : 3BDEAC9D
	/// @DnDArgument : "expr" "spr_thwomp_fall"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_thwomp_fall;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 776DF8C4
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D59D0A4
	/// @DnDParent : 776DF8C4
	/// @DnDArgument : "expr" "spr_thwomp"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_thwomp;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AA38CF9
/// @DnDArgument : "var" "obj_mario.x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "x - 75"
if(obj_mario.x > x - 75)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DA5D2BA
	/// @DnDParent : 1AA38CF9
	/// @DnDArgument : "var" "obj_mario.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "x + 75"
	if(obj_mario.x < x + 75)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A844B46
		/// @DnDParent : 5DA5D2BA
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "value" "starting_point"
		if(y == starting_point)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 601A2F63
			/// @DnDParent : 0A844B46
			/// @DnDArgument : "expr" "10"
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = 10;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6ED3E698
/// @DnDArgument : "var" "vertical_speed"
if(vertical_speed == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03C9AD2E
	/// @DnDParent : 6ED3E698
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "starting_point"
	if(!(y == starting_point))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28715BFA
		/// @DnDParent : 03C9AD2E
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "var" "vertical_speed"
		vertical_speed = -2;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 387EF546
/// @DnDArgument : "script" "move_and_collision_enemy"
/// @DnDSaveInfo : "script" "move_and_collision_enemy"
script_execute(move_and_collision_enemy);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D2DE99D
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "starting_point"
if(y <= starting_point)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62EC9445
	/// @DnDParent : 5D2DE99D
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DD649FC
	/// @DnDParent : 5D2DE99D
	/// @DnDArgument : "expr" "starting_point"
	/// @DnDArgument : "var" "y"
	y = starting_point;
}