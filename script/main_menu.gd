extends Control

var new_page = preload("res://scenes/prefabs/UI/level_selection.tscn")

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(new_page)
	
func _on_settings_pressed() -> void:
	print("Sorry This function is not available for now")

func _on_about_pressed() -> void:
	pass # Replace with function body.
