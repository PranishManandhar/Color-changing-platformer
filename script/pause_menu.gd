extends Control

var level_select = preload("res://scenes/prefabs/UI/level_selection.tscn")

func _on_resume_pressed() -> void:
	$".".get_tree().paused = false
	self.queue_free()

func _on_home_page_pressed() -> void:
	get_tree().change_scene_to_packed(level_select)

func _on_settings_pressed() -> void:
	print("Setting not available in your region")
