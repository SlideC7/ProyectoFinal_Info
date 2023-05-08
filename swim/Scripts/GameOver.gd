extends Node2D


func _ready():
	$Node2D/Titulo2.text = str(Global.final_score)
	if int(Global.final_score) < 1000:
		$Node2D2/Titulo3.text = "CALIFICACION: \n OK !"
	elif 1000 < int(Global.final_score) && int(Global.final_score) < 1900:
		$Node2D2/Titulo3.text = "CALIFICACION: \n BIEN !!"
	elif 1900 < int(Global.final_score):
		$Node2D2/Titulo3.text = "CALIFICACION: \n EXCELENTE !!!"


func _on_Button_pressed():
	Global.final_score=0
	get_tree().change_scene("res://ArcheryGame.tscn")


func _on_Button2_pressed():
	Global.final_score=0
	get_tree().change_scene("res://World.tscn")
