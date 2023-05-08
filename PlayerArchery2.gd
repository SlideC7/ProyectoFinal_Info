extends Area2D

class_name PlayerArchery2

signal spawn_arrow(location)
onready var apun = $Apuntar
var speed = 50

var input_vector = Vector2.ZERO


func _physics_process(delta):
	input_vector.x = Input.get_action_strength("move_rigth") - Input.get_action_strength("move_left")
	
	global_position += input_vector * speed * delta
	
	if Input.is_action_just_pressed("shoot"):
		shoot_arrow()
	
func shoot_arrow():
	emit_signal("spawn_arrow", apun.global_position)
