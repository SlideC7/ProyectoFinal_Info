extends Node

var scr=0
var combo=0
var mult=1
var grd = "..."

func _process(delta):
	match combo:
		0:
			mult=1
		10:
			mult=1.5
		25:
			mult=2

var speed = 220

#sensor
var sensor_AL = 0
var sensor_AD = 0
var sensor_AU = 0
var sensor_AR = 0
