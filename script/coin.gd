extends Area2D
@onready var coin_collected: AudioStreamPlayer2D = $Coin


func _on_body_entered(body: Node2D) -> void:
	coin_collected.play()
	
	if body.is_in_group("Player"):
		Global.score += 1
		queue_free()
