extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


export var currentSide : String = 'R'		#R if on right side of screen, L if not
var speed : int = 500
var currentVel : Vector2 = Vector2()	#current velocity
var x_bound : int = 120  	#half of the entire player sprite size.x

#screen size
onready var screen_size : Vector2 = get_viewport().get_visible_rect().size
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	currentVel.x = 0
	
	if Input.is_action_pressed("ui_left") && position.x > x_bound:
		currentVel.x -= speed
	if Input.is_action_pressed("ui_right") && position.x < screen_size.x - x_bound:
		currentVel.x += speed
	currentVel = move_and_slide(currentVel)

	

