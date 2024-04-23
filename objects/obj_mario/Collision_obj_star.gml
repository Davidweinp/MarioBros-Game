/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 553D01DB
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "super"
super = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5371DF03
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "invincible"
invincible = true;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0B1B88F2
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Pause_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 58D0924D
audio_pause_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5F1D918A
/// @DnDArgument : "soundid" "smw_super"
/// @DnDSaveInfo : "soundid" "smw_super"
audio_play_sound(smw_super, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6A8CC419
/// @DnDArgument : "steps" "600"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 600);