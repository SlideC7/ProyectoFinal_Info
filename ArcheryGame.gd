extends Node2D

var Arrow = preload("res://PlayerArrow.tscn")

var score = 0



func _on_Player_spawn_arrow(location):
	var a = Arrow.instance()
	a.global_position = location
	add_child(a)

func score():
	score += 10
	$Score.text = "SCORE: " + str(score)

func _on_GameTimer_timeout():
	Global.final_score = score
	var game_timer = Timer.new()
	game_timer.set_wait_time(60)
	add_child(game_timer)
	
	game_timer.stop()
	var restart_screen = load("res://GameOverArchery.tscn").instance()
	add_child(restart_screen)


