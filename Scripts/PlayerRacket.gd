extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


export var currentSide : String = 'R'		#R if on right side of screen, L if not

var currentVel : Vector2 = Vector2()	#current velocity
var playerSpeed : int = 1
#screen size
onready var screen_size : Vector2 = get_viewport().get_visible_rect().size
	

func _ready():
	if currentSide == 'L':
		scale.x *= -1

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _physics_process(delta):
	var mousepos = get_viewport().get_mouse_position()	
	var currentDistance = mousepos.x - position.x
	currentVel.x = playerSpeed*currentDistance 
		
	currentVel = move_and_slide(currentVel)
	#currentVel.x = 0
	

