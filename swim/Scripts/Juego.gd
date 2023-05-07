extends Node2D

const AL = preload("res://swim/arrows/Left.tscn")
const AU = preload("res://swim/arrows/Up.tscn")
const AD = preload("res://swim/arrows/Down.tscn")
const AR = preload("res://swim/arrows/Right.tscn")
#const Global = preload("res://swim/Scripts/Global.gd")

var rand=0
var rand2=0
var RNG=RandomNumberGenerator.new()
var counter=0;

func _process(delta):
	$Puntaje2/Label.text = str(Global.scr)
	$Combo2/Label.text = str(Global.combo) + "\n x" + str(Global.mult)
	$Grade/Label.text = str(Global.grd)

#countr to 78

func _on_Timer_timeout():
	$Timer.start()
	RNG.randomize()
	var randint=RNG.randi_range(1,4) #para las flechas
	var randint2=RNG.randi_range(0,8) #para las flechas
	while randint==randint2:
		randint2=RNG.randi_range(0,8)
	rand=randint
	rand2=randint2
	counter+=1
	
	if counter>=75:
		get_tree().change_scene("res://GameOver.tscn")
	
	if counter<68:
		match rand:
			1:
				var al=AL.instance()
				get_parent().add_child(al)
				al.position=$Create/Position2D_AL.global_position
			2:
				var au=AU.instance()
				get_parent().add_child(au)
				au.position=$Create/Position2D_AU.global_position
			3:
				var ad=AD.instance()
				get_parent().add_child(ad)
				ad.position=$Create/Position2D_AD.global_position
			4:
				var ar=AR.instance()
				get_parent().add_child(ar)
				ar.position=$Create/Position2D_AR.global_position

		match rand2:
			1:
				var al=AL.instance()
				get_parent().add_child(al)
				al.position=$Create/Position2D_AL.global_position
			2:
				var au=AU.instance()
				get_parent().add_child(au)
				au.position=$Create/Position2D_AU.global_position
			3:
				var ad=AD.instance()
				get_parent().add_child(ad)
				ad.position=$Create/Position2D_AD.global_position
			4:
				var ar=AR.instance()
				get_parent().add_child(ar)
				ar.position=$Create/Position2D_AR.global_position
