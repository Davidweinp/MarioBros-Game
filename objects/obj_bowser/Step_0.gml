/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0EB00C2E
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" "1"
if(mode == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B820FB2
	/// @DnDParent : 0EB00C2E
	/// @DnDArgument : "var" "jump_speed"
	jump_speed = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71E94DBD
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" "2"
if(mode == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58BFBEFF
	/// @DnDParent : 71E94DBD
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "var" "jump_speed"
	jump_speed = 10;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3597EAF5
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" "3"
if(mode == 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0BB8CB9C
	/// @DnDParent : 3597EAF5
	/// @DnDArgument : "expr" "spr_bowser_fire"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = spr_bowser_fire;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A0EEB47
	/// @DnDParent : 3597EAF5
	/// @DnDArgument : "var" "jump_speed"
	jump_speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F3372EC
	/// @DnDParent : 3597EAF5
	/// @DnDArgument : "var" "walk_speed"
	walk_speed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A3EBE6D
	/// @DnDParent : 3597EAF5
	/// @DnDArgument : "var" "image_index"
	/// @DnDArgument : "value" "3"
	if(image_index == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 495041AD
		/// @DnDParent : 2A3EBE6D
		/// @DnDArgument : "xpos" "-10"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "50"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_fireball"
		/// @DnDSaveInfo : "objectid" "obj_fireball"
		instance_create_layer(x + -10, y + 50, "Instances", obj_fireball);
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 335E91A5
/// @DnDArgument : "script" "calc_enemy_movement"
/// @DnDSaveInfo : "script" "calc_enemy_movement"
script_execute(calc_enemy_movement);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6832246A
/// @DnDArgument : "script" "jump_check"
/// @DnDSaveInfo : "script" "jump_check"
script_execute(jump_check);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 102556E8
/// @DnDArgument : "script" "ground_check"
/// @DnDSaveInfo : "script" "ground_check"
script_execute(ground_check);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 79AF4242
/// @DnDArgument : "script" "move_and_collision_enemy"
/// @DnDSaveInfo : "script" "move_and_collision_enemy"
script_execute(move_and_collision_enemy);