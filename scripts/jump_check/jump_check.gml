/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7BAEFF73
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "jump_check"
function jump_check() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A1C2AB0
	/// @DnDParent : 7BAEFF73
	/// @DnDArgument : "var" "on_ground"
	/// @DnDArgument : "value" "true"
	if(on_ground == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1D237C45
		/// @DnDParent : 6A1C2AB0
		/// @DnDArgument : "var" "jump"
		/// @DnDArgument : "value" "true"
		if(jump == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5EAEE0D4
			/// @DnDParent : 1D237C45
			/// @DnDArgument : "expr" "-jump_speed"
			/// @DnDArgument : "var" "vertical_speed"
			vertical_speed = -jump_speed;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 41E57A95
			/// @DnDParent : 1D237C45
			/// @DnDArgument : "var" "object_index"
			/// @DnDArgument : "value" "obj_mario"
			if(object_index == obj_mario)
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 7ADCD7FA
				/// @DnDParent : 41E57A95
				/// @DnDArgument : "soundid" "smw_jump"
				/// @DnDSaveInfo : "soundid" "smw_jump"
				audio_play_sound(smw_jump, 0, 0, 1.0, undefined, 1.0);
			}
		}
	}
}