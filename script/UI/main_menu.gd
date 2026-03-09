extends Control

var new_page = preload("res://scenes/prefabs/UI/level_selection.tscn")
@onready var bottom_label:Label = $CanvasLayer/bottomLabel/bottomLabel

func _on_start_pressed() -> void:
	get_tree().change_scene_to_packed(new_page)
	
func _on_settings_pressed() -> void:
	bottom_label.text = "Sorry This function is not available for now"

func _on_about_pressed() -> void:
	bottom_label.text = "This game is produced by Gaminglabplays"

func _on_exit_pressed() -> void:
	get_tree().quit()
