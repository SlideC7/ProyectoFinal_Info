extends CanvasLayer


func _process(delta):
	$Node2D/Titulo2.text = "CALIFICACION: \n"+str(Global.scr)
	if int(Global.scr) < 1000:
		$Node2D2/Titulo3.text = "OK !"
	elif 1000 < int(Global.scr) && int(Global.scr) < 1900:
		$Node2D2/Titulo3.text = "BIEN !!"
	elif 1900 < int(Global.scr):
		$Node2D2/Titulo3.text = "EXCELENTE !!!"

func _on_Button_pressed():
	Global.scr=0
	Global.combo+=0
	Global.grd="..."
	get_tree().change_scene("res://swim/Juego.tscn")

func _on_Button2_pressed():
	#                     cambiar por el overworld.
	get_tree().change_scene("res://World.tscn")
	pass
