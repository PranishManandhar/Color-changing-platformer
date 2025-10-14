extends Control
@onready var score_value:=$CanvasLayer/ProgressValue
func _physics_process(delta: float) -> void:
	score_value.text = str(Global.score)

func _on_button_pressed() -> void:
	
	var menu = load("res://scenes/prefabs/UI/PauseMenu.tscn") as PackedScene
	var pause = menu.instantiate()
	add_child(pause) 
	pause.process_mode = Node.PROCESS_MODE_ALWAYS
	get_tree().paused = true
