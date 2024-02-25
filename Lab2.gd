extends Node3D

func _ready():
	var ball_instance = get_node("move_down")  
pass



func _on_ball_hit_ground():
	print("Ball hit the ground! Performing some action.")
 


func _on_ball_ball_hit_ground():
	pass # Replace with function body.
