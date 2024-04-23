/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6E0B20F7
/// @DnDArgument : "font" "score_large"
/// @DnDSaveInfo : "font" "score_large"
draw_set_font(score_large);

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 5D26312E
/// @DnDArgument : "x" "camera_get_view_x(view_camera[0])+20"
/// @DnDArgument : "y" "camera_get_view_y(view_camera[0])+20"
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(camera_get_view_x(view_camera[0])+20, camera_get_view_y(view_camera[0])+20, string("Score: ") + string(__dnd_score));

/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 555A63CE
if(room == room_last)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7AAD657C
	/// @DnDParent : 555A63CE
	/// @DnDArgument : "x" "room_width/2"
	/// @DnDArgument : "y" "room_height/2"
	/// @DnDArgument : "caption" ""You Win!""
	draw_text(room_width/2, room_height/2, string("You Win!") + "");
}