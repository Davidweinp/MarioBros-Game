/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 56E30A6F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "move_and_collision_enemy"
function move_and_collision_enemy() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3674E58A
	/// @DnDParent : 56E30A6F
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])"
	if(x < camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 0B657334
		/// @DnDParent : 3674E58A
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
					/// @DnDArgument : "expr" "-facing*walk_speed"
					/// @DnDArgument : "var" " horizontal_speed"
					 horizontal_speed = -facing*walk_speed;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 19E7B20B
					/// @DnDParent : 1EC403E4
					/// @DnDArgument : "expr" "-facing"
					/// @DnDArgument : "var" "facing"
					facing = -facing;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3152B405
		/// @DnDParent : 3674E58A
		/// @DnDArgument : "expr" "horizontal_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "x"
		x += horizontal_speed;
	
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 3D1E015B
		/// @DnDParent : 3674E58A
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "vertical_speed"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "obj_solid"
		/// @DnDSaveInfo : "object" "obj_solid"
		var l3D1E015B_0 = instance_place(x + 0, y + vertical_speed, obj_solid);
		if ((l3D1E015B_0 > 0))
		{
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25CC8EDE
			/// @DnDParent : 3D1E015B
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			var collide = false;
		
			/// @DnDAction : YoYo Games.Loops.While_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 622DF945
			/// @DnDParent : 3D1E015B
			/// @DnDArgument : "var" "collide"
			/// @DnDArgument : "value" "false"
			while ((collide == false)) {
				/// @DnDAction : YoYo Games.Collisions.If_Object_At
				/// @DnDVersion : 1.1
				/// @DnDHash : 4E943B40
				/// @DnDParent : 622DF945
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "sign(vertical_speed)"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "object" "obj_solid"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "object" "obj_solid"
				var l4E943B40_0 = instance_place(x + 0, y + sign(vertical_speed), obj_solid);
				if (!(l4E943B40_0 > 0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3FEDE721
					/// @DnDParent : 4E943B40
					/// @DnDArgument : "expr" "sign(vertical_speed)"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "y"
					y += sign(vertical_speed);
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 747C0A59
				/// @DnDParent : 622DF945
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1B54DA4E
					/// @DnDParent : 747C0A59
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "collide"
					collide = true;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1945472E
					/// @DnDParent : 747C0A59
					/// @DnDArgument : "var" "vertical_speed"
					vertical_speed = 0;
				}
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53D9513A
		/// @DnDParent : 3674E58A
		/// @DnDArgument : "expr" "vertical_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "y"
		y += vertical_speed;
	}
}