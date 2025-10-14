extends Control

@onready var score = $CanvasLayer/Panel/ScoreNo

func _physics_process(delta: float) -> void:
	get_tree().paused = false
	score.text = str(Global.score)
	
func _on_retry_pressed() -> void:
	pass # Replace with function body.

func _on_give_up_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/prefabs/UI/level_selection.tscn")
