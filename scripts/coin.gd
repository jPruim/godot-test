extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#print("I'm a coin")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	#if(body)
	print("+1 coin")
	queue_free()
	pass # Replace with function body.
