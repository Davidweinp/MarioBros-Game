/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 40B9721A
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_bullet_bill"
/// @DnDSaveInfo : "objectid" "obj_bullet_bill"
instance_create_layer(x + 0, y + 0, "Instances", obj_bullet_bill);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4336CFC2
/// @DnDArgument : "steps" "240"
alarm_set(0, 240);