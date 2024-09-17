extends Area2D

var selected3 = false
var mouse_offset3 = Vector2()
var caixa3 = Vector2(1241, 856)
var parada = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if selected3 and !parada:
		followMouse()
	
func followMouse():
	position = get_global_mouse_position() + mouse_offset3	
	
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			mouse_offset3 = position - get_global_mouse_position()
			selected3 = true
			
		else:
			selected3 = false

func _on_node_2d_encaixou() -> void:
	parada = true
	await get_tree().create_timer(0.5).timeout
	parada = false
