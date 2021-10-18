extends Area2D

# if when player collides, 
#'L' means player switches to left side, 
#'R' player switches to right
export var sideToSwitchTo : String = 'L'

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Bound_body_entered(body):
	if body.currentSide != sideToSwitchTo:	#body is NOT at sideToSwitchTo
		body.currentSide = sideToSwitchTo
		body.scale.x *= -1
