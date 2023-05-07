extends Node2D




func _on_Jugar_pressed():	
	if get_tree().change_scene("res://World.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene")


func _on_Salir_pressed():
	get_tree().quit()

