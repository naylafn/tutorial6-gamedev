extends LinkButton

@export var scene_to_load: String

func _on_New_Game_pressed():
	print("New Game")
	get_tree().change_scene_to_file(str("res://scenes/" + scene_to_load + ".tscn"))

func _on_Try_Again_pressed():
	Global.lives += 3
	get_tree().change_scene_to_file(str("res://scenes/" + scene_to_load + ".tscn"))

func _on_Main_Menu_pressed():
	Global.lives += 3
	get_tree().change_scene_to_file(str("res://scenes/" + "MainMenu" + ".tscn"))

func _on_Stage_pressed():
	get_tree().change_scene_to_file(str("res://scenes/Stage.tscn"))

func _on_Level_1_pressed():
	get_tree().change_scene_to_file(str("res://scenes/" + "Level 1" + ".tscn"))

func _on_Level_2_pressed():
	get_tree().change_scene_to_file(str("res://scenes/" + "Level 2" + ".tscn"))

func _on_Exit_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file(str("res://scenes/" + "MainMenu" + ".tscn"))

func _on_Continue_pressed():
	get_tree().paused = false
	get_tree().current_scene.get_node("Pause").visible = false
