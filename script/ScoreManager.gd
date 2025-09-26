extends Node2D

var total_score:= 0
var score :float

@onready var ProgressTracker = $Player/Camera2D/GameUi/CanvasLayer/ProgressValue

func _countBlocks():
	return get_tree().get_nodes_in_group("Blocks").size()

func _ready() -> void:
	ProgressTracker.text = _render()
	
func _render():
	score = 100.0/(_countBlocks() - 1)
	return str(score)
