extends Area2D

var speed = 150

func _physics_process(delta):
	global_position.y += -speed * delta

func _on_PlayerArrow_area_entered(area):
	if area.is_in_group("dianas"):
		area.take_damage(1)
