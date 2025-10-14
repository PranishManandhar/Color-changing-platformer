extends Area2D

@onready var timer:= $Timer
var DeathScreen = load("res://scenes/prefabs/UI/DeathScreen.tscn") as PackedScene

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	timer.start()
	body.get_node("CollisionShape2D").queue_free()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	var existing_screens = get_tree().get_nodes_in_group("death_screens")
	if existing_screens.size() == 0:
		var menu = DeathScreen.instantiate()
		menu.add_to_group("death_screens")
		add_child(menu)  
