/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 56E30A6F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "move_and_collision"
function move_and_collision() 
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0B657334
	/// @DnDParent : 56E30A6F
	/// @DnDArgument : "x" "horizontal_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l0B657334_0 = instance_place(x + horizontal_speed, y + 0, obj_solid);
	if ((l0B657334_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31D83D51
		/// @DnDParent : 0B657334
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 4E49CE48
		/// @DnDParent : 0B657334
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 4F24F97C
			/// @DnDParent : 4E49CE48
			/// @DnDArgument : "x" "sign(horizontal_speed)"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l4F24F97C_0 = instance_place(x + sign(horizontal_speed), y + 0, obj_solid);
			if (!(l4F24F97C_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 561AFD66
				/// @DnDParent : 4F24F97C
				/// @DnDArgument : "expr" "sign(horizontal_speed)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += sign(horizontal_speed);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1EC403E4
			/// @DnDParent : 4E49CE48
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0BF55FC7
				/// @DnDParent : 1EC403E4
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7097DAFC
				/// @DnDParent : 1EC403E4
				/// @DnDArgument : "var" " horizontal_speed"
				 horizontal_speed = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 263C18AA
	/// @DnDParent : 56E30A6F
	/// @DnDArgument : "expr" "horizontal_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += horizontal_speed;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 06DCC237
	/// @DnDParent : 56E30A6F
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vertical_speed"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_solid"
	/// @DnDSaveInfo : "object" "obj_solid"
	var l06DCC237_0 = instance_place(x + 0, y + vertical_speed, obj_solid);
	if ((l06DCC237_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48ADAB6D
		/// @DnDParent : 06DCC237
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		var collide = false;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 64734AEC
		/// @DnDParent : 06DCC237
		/// @DnDArgument : "var" "collide"
		/// @DnDArgument : "value" "false"
		while ((collide == false)) {
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 6F985A01
			/// @DnDParent : 64734AEC
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sign(vertical_speed)"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "obj_solid"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "object" "obj_solid"
			var l6F985A01_0 = instance_place(x + 0, y + sign(vertical_speed), obj_solid);
			if (!(l6F985A01_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 75217E5E
				/// @DnDParent : 6F985A01
				/// @DnDArgument : "expr" "sign(vertical_speed)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "y"
				y += sign(vertical_speed);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 42674B73
			/// @DnDParent : 64734AEC
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7EE742E2
				/// @DnDParent : 42674B73
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "collide"
				collide = true;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4944D2BA
				/// @DnDParent : 42674B73
				/// @DnDArgument : "var" "vertical_speed"
				vertical_speed = 0;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E10C8A8
	/// @DnDParent : 56E30A6F
	/// @DnDArgument : "expr" "vertical_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += vertical_speed;
}