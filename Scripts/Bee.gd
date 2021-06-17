extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var x = (get_global_mouse_position().x - get_position().x) * 0.2
	var y = (get_global_mouse_position().y - get_position().y) * 0.2
	
	translate(Vector2(x, y))	
	pass
