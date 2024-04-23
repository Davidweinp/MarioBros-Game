/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6E3E3A5A
/// @DnDArgument : "expr" "irandom_range(1,3)"
/// @DnDArgument : "var" "mode"
mode = irandom_range(1,3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2404C1B4
/// @DnDArgument : "expr" "irandom_range(-4,4)"
/// @DnDArgument : "var" "walk_speed"
walk_speed = irandom_range(-4,4);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13BD9747
/// @DnDArgument : "expr" "spr_bowser"
/// @DnDArgument : "var" "sprite_index"
sprite_index = spr_bowser;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03517410
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "invincible"
invincible = false;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7DAFA1F2
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);