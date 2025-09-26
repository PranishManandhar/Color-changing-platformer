extends Area2D   

signal blockStepped()

func _on_body_entered(body: Node2D) -> void:
	if  body.is_in_group("Player"):
		emit_signal("blockStepped")
