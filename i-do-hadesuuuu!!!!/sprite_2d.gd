extends Sprite2D


const STRZALA = preload("res://character_body_2d_2.gd")
func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
 
	if Input.is_action_just_pressed("fire"):
		var strzala_instance = STRZALA.instantiate()
		get_tree().root.add_child(strzala_instance)
		strzala_instance.global_position = global_position
		strzala_instance.rotation = rotation
