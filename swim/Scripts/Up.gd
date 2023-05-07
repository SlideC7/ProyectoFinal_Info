extends Area2D

var speed = Global.speed
var sensor = 0
var dist = position.y - 64*0.3

func _process(delta):
	#se mueve hacia arriba
	position.y -= speed*delta
	
	#se fue D-:
	if position.y < -50*0.3:
		queue_free()
		Global.scr-=10
		Global.combo=0
		print('adios, flecha arriba')
	
	#indentado asi para ver porQUE las flechas que no estan sobre idle_ se borran antes de tiempo
	#no es el global sensor 
	#ES JUEGO, al generar flechas debe ser el error
	if sensor==1:
		if Global.sensor_AU==1:
			if Input.is_action_just_pressed("ui_up"):
				queue_free()
	
	#solution: llamar queue_free() desde las funciones idle_ ?? test
	

func _on_Up_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	sensor=1

func _on_Up_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor=0
