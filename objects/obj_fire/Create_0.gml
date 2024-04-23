/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3A5A0D61
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34D96164
/// @DnDArgument : "var" "obj_mario.facing"
/// @DnDArgument : "value" "1"
if(obj_mario.facing == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DF065EC
	/// @DnDParent : 34D96164
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "facing"
	facing = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 65345A2A
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F4408ED
	/// @DnDParent : 65345A2A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "facing"
	facing = -1;
}