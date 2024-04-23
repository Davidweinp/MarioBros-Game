/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 72F2CE82
/// @DnDArgument : "script" "calc_enemy_movement"
/// @DnDSaveInfo : "script" "calc_enemy_movement"
script_execute(calc_enemy_movement);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A84E586
/// @DnDArgument : "var" "parachute"
/// @DnDArgument : "value" "true"
if(parachute == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B22944E
	/// @DnDParent : 6A84E586
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "vertical_speed"
	vertical_speed = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 637B8877
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6639B0F3
	/// @DnDParent : 637B8877
	/// @DnDArgument : "var" "horizontal_speed"
	/// @DnDArgument : "op" "2"
	if(horizontal_speed > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10ED2F6A
		/// @DnDParent : 6639B0F3
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C69DF7F
		/// @DnDParent : 6639B0F3
		/// @DnDArgument : "expr" "spr_goomba_right"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_goomba_right;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 17D6D366
	/// @DnDParent : 637B8877
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33C31414
		/// @DnDParent : 17D6D366
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A4FFC5B
		/// @DnDParent : 17D6D366
		/// @DnDArgument : "expr" "spr_goomba_left"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = spr_goomba_left;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 342AF1C8
/// @DnDArgument : "script" "move_and_collision_enemy"
/// @DnDSaveInfo : "script" "move_and_collision_enemy"
script_execute(move_and_collision_enemy);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 364749DE
/// @DnDArgument : "var" "vertical_speed"
if(vertical_speed == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68E6F2E1
	/// @DnDParent : 364749DE
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "walk_speed"
	walk_speed = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CB74FB8
	/// @DnDParent : 364749DE
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "parachute"
	parachute = false;
}