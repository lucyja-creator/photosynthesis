extends CharacterBody2D

func _physics_process(delta:float)  -> void:
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up" , "ui_down")
	velocity = input_direction *400
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	look_at(get_global_mouse_position())
	rotation_degrees += 90
	rotation += deg_to_rad(90)

	look_at(get_global_mouse_position())
	rotation_degrees = wrap(rotation_degrees, 0, 360)
	if rotation_degrees > 90 and rotation_degrees < 270:
		scale.y = -1
	else:
		scale.y = 1
