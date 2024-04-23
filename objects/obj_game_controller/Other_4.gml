/// @DnDAction : YoYo Games.Rooms.Get_Current_Room
/// @DnDVersion : 1
/// @DnDHash : 2BBB833B
/// @DnDArgument : "var" "current_room"
current_room = room;

/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 67FA19DE
audio_stop_all();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F0EF5AF
/// @DnDArgument : "var" "current_room"
/// @DnDArgument : "value" "Level_1"
if(current_room == Level_1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 085A0BBB
	/// @DnDParent : 3F0EF5AF
	/// @DnDArgument : "soundid" "super_mario_remix"
	/// @DnDSaveInfo : "soundid" "super_mario_remix"
	audio_play_sound(super_mario_remix, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 591EE1BB
/// @DnDArgument : "var" "current_room"
/// @DnDArgument : "value" "Level_2"
if(current_room == Level_2)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 30713FA3
	/// @DnDParent : 591EE1BB
	/// @DnDArgument : "soundid" "athletic_remix"
	/// @DnDSaveInfo : "soundid" "athletic_remix"
	audio_play_sound(athletic_remix, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 51205DCD
/// @DnDArgument : "var" "current_room"
/// @DnDArgument : "value" "Level_3"
if(current_room == Level_3)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1F67CB83
	/// @DnDParent : 51205DCD
	/// @DnDArgument : "soundid" "yoshi_remix"
	/// @DnDSaveInfo : "soundid" "yoshi_remix"
	audio_play_sound(yoshi_remix, 0, 0, 1.0, undefined, 1.0);
}