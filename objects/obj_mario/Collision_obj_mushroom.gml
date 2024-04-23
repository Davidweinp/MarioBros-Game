/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6699376C
/// @DnDArgument : "var" "small"
/// @DnDArgument : "value" "true"
if(small == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0B24A5C0
	/// @DnDParent : 6699376C
	/// @DnDArgument : "expr" "-29"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += -29;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6BCFC7DA
	/// @DnDParent : 6699376C
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "small"
	small = false;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2938963B
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2E49CBE9
/// @DnDArgument : "soundid" "smw_power_up"
/// @DnDSaveInfo : "soundid" "smw_power_up"
audio_play_sound(smw_power_up, 0, 0, 1.0, undefined, 1.0);