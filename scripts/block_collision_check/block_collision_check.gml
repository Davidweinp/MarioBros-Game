/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11798FDF
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "block_collision_check"
function block_collision_check() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 2D79B0C3
	/// @DnDParent : 11798FDF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_block"
	/// @DnDSaveInfo : "object" "obj_block"
	var l2D79B0C3_0 = instance_place(x + 0, y + -1, obj_block);
	if ((l2D79B0C3_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B80E8FF
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "var" "nearest_block"
		/// @DnDArgument : "value" "instance_nearest(x,y,obj_block)"
		var nearest_block = instance_nearest(x,y,obj_block);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F499ADF
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "var" "nearest_block.sprite_index"
		/// @DnDArgument : "value" "spr_block_full"
		if(nearest_block.sprite_index == spr_block_full)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7A6DA7C2
			/// @DnDParent : 3F499ADF
			/// @DnDArgument : "soundid" "smw_coin"
			/// @DnDSaveInfo : "soundid" "smw_coin"
			audio_play_sound(smw_coin, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 455BCBCA
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "var" "nearest_block.mushroom_block"
		/// @DnDArgument : "value" "true"
		if(nearest_block.mushroom_block == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 12E41D89
			/// @DnDParent : 455BCBCA
			/// @DnDArgument : "xpos" "nearest_block.x"
			/// @DnDArgument : "ypos" "nearest_block.y-42"
			/// @DnDArgument : "objectid" "obj_mushroom"
			/// @DnDSaveInfo : "objectid" "obj_mushroom"
			instance_create_layer(nearest_block.x, nearest_block.y-42, "Instances", obj_mushroom);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 755D0771
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "var" "nearest_block.star_block"
		/// @DnDArgument : "value" "true"
		if(nearest_block.star_block == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4C80467D
			/// @DnDParent : 755D0771
			/// @DnDArgument : "xpos" "nearest_block.x"
			/// @DnDArgument : "ypos" "nearest_block.y-42"
			/// @DnDArgument : "objectid" "obj_star"
			/// @DnDSaveInfo : "objectid" "obj_star"
			instance_create_layer(nearest_block.x, nearest_block.y-42, "Instances", obj_star);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A2DC486
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "var" "nearest_block.fire_block"
		/// @DnDArgument : "value" "true"
		if(nearest_block.fire_block == true)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 78A86DF5
			/// @DnDParent : 7A2DC486
			/// @DnDArgument : "xpos" "nearest_block.x"
			/// @DnDArgument : "ypos" "nearest_block.y-42"
			/// @DnDArgument : "objectid" "obj_fire_flower"
			/// @DnDSaveInfo : "objectid" "obj_fire_flower"
			instance_create_layer(nearest_block.x, nearest_block.y-42, "Instances", obj_fire_flower);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17F697AC
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "expr" "spr_block_empty"
		/// @DnDArgument : "var" "nearest_block.sprite_index"
		nearest_block.sprite_index = spr_block_empty;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 447CFA8D
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "nearest_block.mushrom_block"
		nearest_block.mushrom_block = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FF7CB52
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "nearest_block.star_block"
		nearest_block.star_block = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F44DECC
		/// @DnDParent : 2D79B0C3
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "nearest_block.fire_block"
		nearest_block.fire_block = false;
	}
}