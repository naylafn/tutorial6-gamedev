extends CanvasLayer
func _ready():
	visible = false

func start_transition(path):
	get_tree().paused = true
	visible = true

func show_end():
	get_tree().paused = true
	visible = true
	$PanelContainer/VBoxContainer/HBoxContainer3/Next.hide()
