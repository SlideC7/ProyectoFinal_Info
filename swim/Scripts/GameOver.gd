extends Node2D


func _ready():
	$Node2D/Titulo2.text = str(Global.scr)
	if int(Global.scr) < 1000:
		$Node2D2/Titulo3.text = "CALIFICACION: \n OK !"
	elif 1000 < int(Global.scr) && int(Global.scr) < 1900:
		$Node2D2/Titulo3.text = "CALIFICACION: \n BIEN !!"
	elif 1900 < int(Global.scr):
		$Node2D2/Titulo3.text = "CALIFICACION: \n EXCELENTE !!!"


func _on_Button_pressed():
	Global.scr=0
	Global.combo+=0
	Global.grd="..."
	get_tree().change_scene("res://swim/Juego.tscn")


func _on_Button2_pressed():
	Global.scr=0
	Global.combo+=0
	Global.grd="..."
	get_tree().change_scene("res://World.tscn")
