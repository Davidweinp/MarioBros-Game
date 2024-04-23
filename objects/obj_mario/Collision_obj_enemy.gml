/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 48CC33D7
/// @DnDArgument : "var" "player_hurt"
/// @DnDArgument : "value" "true"
var player_hurt = true;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BB91076
/// @DnDArgument : "var" "super"
/// @DnDArgument : "value" "true"
if(super == true)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4658E712
	/// @DnDApplyTo : other
	/// @DnDParent : 2BB91076
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10FAAF92
	/// @DnDParent : 2BB91076
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "player_hurt"
	player_hurt = false;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4F2E1474
	/// @DnDParent : 2BB91076
	/// @DnDArgument : "soundid" "smw_super"
	/// @DnDSaveInfo : "soundid" "smw_super"
	audio_play_sound(smw_super, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 3AC0A299
	/// @DnDApplyTo : {obj_game_controller}
	/// @DnDParent : 2BB91076
	/// @DnDArgument : "score" "100"
	/// @DnDArgument : "score_relative" "1"
	with(obj_game_controller) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(100);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42432463
/// @DnDArgument : "var" "other.invincible"
/// @DnDArgument : "value" "false"
if(other.invincible == false)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6FE471DD
	/// @DnDParent : 42432463
	/// @DnDArgument : "var" "bbox_bottom"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "other.bbox_top"
	if(bbox_bottom > other.bbox_top)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BBFEE8B
		/// @DnDParent : 6FE471DD
		/// @DnDArgument : "var" "vertical_speed"
		/// @DnDArgument : "op" "2"
		if(vertical_speed > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2BB7CC5C
			/// @DnDParent : 4BBFEE8B
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "player_hurt"
			player_hurt = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 72239C59
			/// @DnDParent : 4BBFEE8B
			/// @DnDArgument : "expr" "-jump_speed*1.2"
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed*1.2;
		
			/// @DnDAction : YoYo Games.Instance Variables.Set_Score
			/// @DnDVersion : 1
			/// @DnDHash : 019AD748
			/// @DnDApplyTo : {obj_game_controller}
			/// @DnDParent : 4BBFEE8B
			/// @DnDArgument : "score" "100"
			/// @DnDArgument : "score_relative" "1"
			with(obj_game_controller) {
			if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
			__dnd_score += real(100);
			}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 15C055DF
			/// @DnDApplyTo : other
			/// @DnDParent : 4BBFEE8B
			with(other) instance_destroy();
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0540C6BA
			/// @DnDParent : 4BBFEE8B
			/// @DnDArgument : "soundid" "smw_stomp"
			/// @DnDSaveInfo : "soundid" "smw_stomp"
			audio_play_sound(smw_stomp, 0, 0, 1.0, undefined, 1.0);
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1D94DC90
/// @DnDArgument : "var" "player_hurt"
/// @DnDArgument : "value" "true"
if(player_hurt == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EB3F89B
	/// @DnDParent : 1D94DC90
	/// @DnDArgument : "var" "small"
	/// @DnDArgument : "value" "true"
	if(small == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70588F8A
		/// @DnDParent : 6EB3F89B
		/// @DnDArgument : "var" "invincible"
		/// @DnDArgument : "value" "false"
		if(invincible == false)
		{
			/// @DnDAction : YoYo Games.Rooms.Restart_Room
			/// @DnDVersion : 1
			/// @DnDHash : 7037E8D5
			/// @DnDParent : 70588F8A
			room_restart();
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3EF196B3
	/// @DnDParent : 1D94DC90
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A434DE3
		/// @DnDParent : 3EF196B3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "small"
		small = true;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61AE3E33
		/// @DnDParent : 3EF196B3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "invincible"
		invincible = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 79512BB9
		/// @DnDParent : 3EF196B3
		/// @DnDArgument : "steps" "150"
		alarm_set(0, 150);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EA89A39
		/// @DnDParent : 3EF196B3
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "fire"
		fire = false;
	}
}