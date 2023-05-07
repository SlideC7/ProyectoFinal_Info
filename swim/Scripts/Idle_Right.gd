extends Area2D

onready var anim = $AnimationPlayer
var sensor = 0
var shape
var dist = 400

func _process(delta):
	if(shape!=null && is_instance_valid(shape)):
		#Invalid get index 'global_position' (on base: 'previously freed instance').
		# :(
		dist =  abs(get_last_shape_owner().global_position.y - 64)
		
	#Sensor y puntaje good
	if sensor==1 and Input.is_action_just_pressed("ui_right"):
			#anim.play("Good")
			#Global.scr+=10*Global.mult
			#Global.combo+=1
			#print('good! (down)')
		if dist > 52:
			$"/root/Global".grd = "MISS !!"
			#$Grade/Label.text = "MISS !!"
			#print(str(dist) + " miss!, flecha dere")
			anim.play("Bad")
			Global.scr-=10
			Global.combo=0
		elif 32 < dist && dist < 52:
			$"/root/Global".grd = "GOOD !!"
			#print(str(dist)+" good!, flecha dere")
			anim.play("Good")
			Global.scr+=5*Global.mult
			Global.combo+=1
		elif 16 < dist && dist < 32:
			$"/root/Global".grd = "GREAT !!"
			#print(str(dist) + " grat!, flecha dere")
			anim.play("Good")
			Global.scr+=10*Global.mult
			Global.combo+=1
		elif 0 < dist && dist < 16:
			#print(str(dist) + " excelent!, flecha dere")
			anim.play("Good")
			Global.scr+=15*Global.mult
			Global.combo+=1
			$"/root/Global".grd = "PERFEC !!"
	#Sensor y puntaje bad
	if sensor==0 && Input.is_action_just_pressed("ui_right"):
			anim.play("Bad")
			$"/root/Global".grd = "MISS !!"
			#$Grade/Label.text = "MISS !!"
			#print(str(dist) + " miss!, flecha dere")
			Global.scr-=10
			Global.combo=0


func _on_Idle_Right_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	var other_shape_owner = area.shape_find_owner(area_shape_index)
	var other_shape_node = area.shape_owner_get_owner(other_shape_owner)
	print(other_shape_node)
	print(other_shape_node.global_position)
	#Si uso other_shape_node.global_position.y siempre me da el punto de colision (el borde exacto entre los dos nodos.
	shape = other_shape_node
	sensor=1
	Global.sensor_AR=1

func get_last_shape_owner():
	return shape

func _on_Idle_Right_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	sensor=0
	Global.sensor_AR=0
