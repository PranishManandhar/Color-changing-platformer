extends Node2D

#find why its working and make it clear for later
func _ready() -> void:
	$AnimationPlayer.play("sliding")
	$AnimationPlayer.play("UpDownSlider")
