extends Area2D

#imports
@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print("I'm a coin")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	#if(body)
	game_manager.add_point(1)
	print(game_manager.score)
	queue_free()
	pass # Replace with function body.
