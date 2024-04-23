/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0349B327
/// @DnDArgument : "var" "small"
/// @DnDArgument : "value" "true"
if(small == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B79203D
	/// @DnDParent : 0349B327
	/// @DnDArgument : "expr" "-29"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -29;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B374152
	/// @DnDParent : 0349B327
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "small"
	small = false;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3930E28B
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0111CC63
/// @DnDArgument : "soundid" "smw_power_up"
/// @DnDSaveInfo : "soundid" "smw_power_up"
audio_play_sound(smw_power_up, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 77883072
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "fire"
fire = true;