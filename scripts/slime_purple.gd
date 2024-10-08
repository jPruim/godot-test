extends Node2D

const SPEED = 60
var direction = 1

@onready var ray_cast_right = $RayCast2DRight
@onready var ray_cast_left = $RayCast2DLeft
@onready var ray_cast_right_down = $RayCast2DRightDown
@onready var ray_cast_left_down = $RayCast2DLeftDown
@onready var animated_sprite = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding() or !ray_cast_right_down.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	if ray_cast_left.is_colliding() or !ray_cast_left_down.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
			
	position.x += direction * SPEED * delta
