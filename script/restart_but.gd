extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	$animacao1.play("button_up")
	await get_tree().create_timer(0.2).timeout
	get_tree().change_scene_to_file("res://telaPrincipal.tscn")
