/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1C141C72
/// @DnDArgument : "obj" "obj_mario"
/// @DnDSaveInfo : "obj" "obj_mario"
var l1C141C72_0 = false;
l1C141C72_0 = instance_exists(obj_mario);
if(l1C141C72_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 423C24A2
	/// @DnDParent : 1C141C72
	/// @DnDArgument : "var" "obj_mario.facing"
	/// @DnDArgument : "value" "facing"
	if(obj_mario.facing == facing)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4E47997F
		/// @DnDParent : 423C24A2
		/// @DnDArgument : "x" "obj_mario.x"
		/// @DnDArgument : "y" "obj_mario.y"
		direction = point_direction(x, y, obj_mario.x, obj_mario.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0B497E96
		/// @DnDParent : 423C24A2
		/// @DnDArgument : "speed" "1.5"
		speed = 1.5;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C8306C0
		/// @DnDParent : 423C24A2
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "value" "1"
		if(facing == 1)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 63FF57C6
			/// @DnDParent : 5C8306C0
			/// @DnDArgument : "expr" "spr_boo_right_follow"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_boo_right_follow;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 498E02CB
		/// @DnDParent : 423C24A2
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E6206C6
			/// @DnDParent : 498E02CB
			/// @DnDArgument : "expr" "spr_boo_left_follow"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_boo_left_follow;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1B8C67E0
	/// @DnDParent : 1C141C72
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4CE20EBB
		/// @DnDParent : 1B8C67E0
		speed = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B82A56F
		/// @DnDParent : 1B8C67E0
		/// @DnDArgument : "var" "obj_mario.x"
		/// @DnDArgument : "op" "3"
		if(obj_mario.x <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 33E77B5A
			/// @DnDParent : 7B82A56F
			/// @DnDArgument : "expr" "spr_boo_right"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_boo_right;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F4F0025
			/// @DnDParent : 7B82A56F
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "var" "facing"
			facing = -1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1AEA15BB
		/// @DnDParent : 1B8C67E0
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 27D091D3
			/// @DnDParent : 1AEA15BB
			/// @DnDArgument : "expr" "spr_boo_left"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = spr_boo_left;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02194D39
			/// @DnDParent : 1AEA15BB
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "facing"
			facing = 1;
		}
	}
}