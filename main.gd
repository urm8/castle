extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var camera_speed = 10
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var cam = $Camera2D
	var velocity = Vector2(0, 0)
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += camera_speed
	elif Input.is_key_pressed(KEY_LEFT):
		velocity.x -= camera_speed
	
	cam.position += velocity
