extends Area2D

var player = load("res://scenes/prefabs/player.tscn")
func _on_body_entered(body) -> void:
	if  body.name == "Player":
		print("game finished")
		get_tree().reload_current_scene()
