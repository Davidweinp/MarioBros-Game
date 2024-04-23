/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2E0AE097
/// @DnDArgument : "script" "get_player_input"
/// @DnDSaveInfo : "script" "get_player_input"
script_execute(get_player_input);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0A0788C9
/// @DnDArgument : "script" "calc_movement"
/// @DnDSaveInfo : "script" "calc_movement"
script_execute(calc_movement);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 79228442
/// @DnDArgument : "script" "move_and_collision"
/// @DnDSaveInfo : "script" "move_and_collision"
script_execute(move_and_collision);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7C747917
/// @DnDArgument : "script" "change_animation"
/// @DnDSaveInfo : "script" "change_animation"
script_execute(change_animation);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 237C0B3C
/// @DnDArgument : "script" "jump_check"
/// @DnDSaveInfo : "script" "jump_check"
script_execute(jump_check);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4A7585D9
/// @DnDArgument : "script" "ground_check"
/// @DnDSaveInfo : "script" "ground_check"
script_execute(ground_check);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 08154967
/// @DnDArgument : "script" "bottom_level_check"
/// @DnDSaveInfo : "script" "bottom_level_check"
script_execute(bottom_level_check);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43980F48
/// @DnDArgument : "var" "small"
/// @DnDArgument : "value" "true"
if(small == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 70F6E571
	/// @DnDParent : 43980F48
	/// @DnDArgument : "script" "change_animation_small"
	/// @DnDSaveInfo : "script" "change_animation_small"
	script_execute(change_animation_small);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31089E64
/// @DnDArgument : "var" "small"
/// @DnDArgument : "value" "true"
if(small == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6FEAA0A8
	/// @DnDParent : 31089E64
	/// @DnDArgument : "script" "change_animation_small"
	/// @DnDSaveInfo : "script" "change_animation_small"
	script_execute(change_animation_small);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2ADBCA93
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DFCEFA3
	/// @DnDParent : 2ADBCA93
	/// @DnDArgument : "var" "fire"
	/// @DnDArgument : "value" "true"
	if(fire == true)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 22E79E55
		/// @DnDParent : 2DFCEFA3
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "script" "change_animation_fire"
		/// @DnDSaveInfo : "script" "change_animation_fire"
		var script_execute(change_animation_fire);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72519E14
	/// @DnDParent : 2ADBCA93
	else
	{
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1702CFB1
		/// @DnDParent : 72519E14
		/// @DnDArgument : "script" "change_animation"
		/// @DnDSaveInfo : "script" "change_animation"
		script_execute(change_animation);
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 27C35CDC
/// @DnDArgument : "script" "block_collision_check"
/// @DnDSaveInfo : "script" "block_collision_check"
script_execute(block_collision_check);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2F55BF14
/// @DnDArgument : "script" "change_animation_super"
/// @DnDSaveInfo : "script" "change_animation_super"
script_execute(change_animation_super);