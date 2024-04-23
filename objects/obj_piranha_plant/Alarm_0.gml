/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 23B5B9A0
/// @DnDArgument : "steps" "240"
alarm_set(0, 240);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 21879E1E
/// @DnDArgument : "script" "ground_check"
/// @DnDSaveInfo : "script" "ground_check"
script_execute(ground_check);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 55E88E79
/// @DnDArgument : "script" "jump_check"
/// @DnDSaveInfo : "script" "jump_check"
script_execute(jump_check);