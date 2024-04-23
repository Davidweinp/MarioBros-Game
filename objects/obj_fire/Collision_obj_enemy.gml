/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 661D430E
/// @DnDApplyTo : other
/// @DnDArgument : "var" "invincible"
/// @DnDArgument : "value" "true"
with(other) var l661D430E_0 = invincible == true;
if(l661D430E_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74FB68FA
	/// @DnDParent : 661D430E
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 02803D66
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5303E826
	/// @DnDApplyTo : other
	/// @DnDParent : 02803D66
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 22C6A973
	/// @DnDParent : 02803D66
	/// @DnDArgument : "soundid" "smw_stomp"
	/// @DnDSaveInfo : "soundid" "smw_stomp"
	audio_play_sound(smw_stomp, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 1C1076FB
	/// @DnDApplyTo : {obj_game_controller}
	/// @DnDParent : 02803D66
	/// @DnDArgument : "score" "100"
	/// @DnDArgument : "score_relative" "1"
	with(obj_game_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(100);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 21CD286A
	/// @DnDParent : 02803D66
	instance_destroy();
}