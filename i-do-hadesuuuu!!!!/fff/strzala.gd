extends CharacterBody2D

const SPEED: int = 340
func _ready() -> void:
	var velocity = transform.x * SPEED

func _process(delta: float) -> void:
	global_position += transform.x * SPEED * delta



func _on_rename_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemies"):
		area.get_parent().queue_free()
		area.queue_free()

func _physics_process(delta: float) -> void:
	
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
		global_rotation = global_rotation
		
		
		
