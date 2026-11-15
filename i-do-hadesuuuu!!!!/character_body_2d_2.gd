extends CharacterBody2D
func _ready() -> void:
	randomize()
	var random_angle = randf() * TAU
	velocity = Vector2.RIGHT.rotated(random_angle) *800
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
