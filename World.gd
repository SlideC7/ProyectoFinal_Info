extends Node2D


func _on_JugarSwim_pressed():	
	if get_tree().change_scene("res://swim/juego.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene")
		
func _on_JugarArchry_pressed():
	if get_tree().change_scene("res://ArcheryGame.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene")
