extends Control

var levels = [
	"res://scenes/prefabs/UI/main_menu.tscn",
	"res://scenes/Levels/lvl1.tscn",
	"res://scenes/Levels/lvl2.tscn",
]

func _ready() -> void:
	$"CanvasLayer/Back".pressed.connect(Callable(self,"_on_back_pressed"))
	$"CanvasLayer/lvl 1".pressed.connect(Callable(self, "_on_lvl_1_pressed"))
	$"CanvasLayer/lvl 2".pressed.connect(Callable(self,"_on_lvl_2_pressed"))

func _on_back_pressed() -> void:
	call_deferred("_level_load", levels[0])
func _on_lvl_1_pressed() -> void:
	call_deferred("_level_load", levels[1])
func _on_lvl_2_pressed() -> void:
	call_deferred("_level_load", levels[2])


func _level_load(scene_path:String):
	if ResourceLoader.exists(scene_path):
		get_tree().change_scene_to_file(scene_path)
	else:
		print("Scene not found:", scene_path)
