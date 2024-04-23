/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5E055EE2
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "change_animation_super"
function change_animation_super() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 240536DE
	/// @DnDParent : 5E055EE2
	/// @DnDArgument : "var" "super"
	/// @DnDArgument : "value" "true"
	if(super == true)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 701B4596
		/// @DnDParent : 240536DE
		/// @DnDArgument : "var" "image_alpha"
		if(image_alpha == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1265A1F9
			/// @DnDParent : 701B4596
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "image_alpha"
			image_alpha = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3D24061D
		/// @DnDParent : 240536DE
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A03C174
			/// @DnDParent : 3D24061D
			/// @DnDArgument : "var" "image_alpha"
			image_alpha = 0;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06B3E7F4
	/// @DnDParent : 5E055EE2
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14FB6C81
		/// @DnDParent : 06B3E7F4
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_alpha"
		image_alpha = 1;
	}
}