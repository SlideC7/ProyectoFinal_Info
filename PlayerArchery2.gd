extends Area2D

var speed = 100

var input_vector = Vector2.ZERO


func _physics_process(delta):
	input_vector.x = Input.get_action_strength("move_rigth") - Input.get_action_strength("move_left")
	
	global_position += input_vector * speed * delta
	
