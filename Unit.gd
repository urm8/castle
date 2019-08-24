extends Node2D

export var speed = 2
export var dmg = 0
export var health = 3
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	# Replace with function body.
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(speed, 0)
	$AnimatedSprite.play('walk')


func _on_notify_screen_exited():
	queue_free()
