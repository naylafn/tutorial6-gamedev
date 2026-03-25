extends Area2D

@export var sceneName: String = "Level 1"
@onready var transition = get_tree().current_scene.get_node("Level Transition")

func _on_Area_Trigger_body_entered(body):
	var current_scene = get_tree().get_current_scene().get_name()
	if body.get_name() == "Player":
		if current_scene == sceneName:
			Global.lives -=1
		var next_scene = "Level 2"
		if (Global.lives == 0):
			get_tree().call_deferred("change_scene_to_file",(str("res://scenes/Game Over.tscn")))
		else:
			if current_scene == "Level 1":
				transition.start_transition(next_scene)
			else:
				transition.show_end()
