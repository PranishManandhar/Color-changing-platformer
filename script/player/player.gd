extends CharacterBody2D

const SPEED := 500.0
const JUMP_VELOCITY := -500.0
const deceleration := 900.0

var color_state := "red"

func _physics_process(delta: float) -> void:
	# Handle jump. 
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y += JUMP_VELOCITY

	velocity.y += ProjectSettings.get_setting("physics/2d/default_gravity") * delta
	
	#left and right movement
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, deceleration * delta)

	#colorChange
	if Input.is_action_just_pressed("ui_accept"):
		color_state = "blue" if color_state == "red" else "red"
		$ColorRect.color = color_state

	if color_state == "red":
		set_collision_mask_value(1,true)
		set_collision_mask_value(2,false)
	else:
		set_collision_mask_value(1,false)
		set_collision_mask_value(2,true)	

	move_and_slide()
