/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 212F0BB9
/// @DnDArgument : "var" "life-1"
if(life-1 == 0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 4D269669
	/// @DnDParent : 212F0BB9
	room_goto_next();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 15C56988
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 390AA63A
	/// @DnDParent : 15C56988
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" " new_bowser"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_bowser"
	/// @DnDSaveInfo : "objectid" "obj_bowser"
	var  new_bowser = instance_create_layer(x + 0, y + 0, "Instances", obj_bowser);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C0B35F5
	/// @DnDParent : 15C56988
	/// @DnDArgument : "expr" "life-1"
	/// @DnDArgument : "var" "new_bowser.life"
	new_bowser.life = life-1;
}