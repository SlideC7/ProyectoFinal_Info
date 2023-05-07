extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var state_machine = $AnimationTree.get("parameters/playback")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		state_machine.travel("left")
	if Input.is_action_just_pressed("ui_up"):
		state_machine.travel("up")
	if Input.is_action_just_pressed("ui_down"):
		state_machine.travel("down")
	if Input.is_action_just_pressed("ui_right"):
		state_machine.travel("right")
