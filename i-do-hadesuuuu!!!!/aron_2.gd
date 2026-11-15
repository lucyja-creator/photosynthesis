extends CharacterBody2D
func _ready() -> void:
	# Inicjalizacja generatora liczb losowych
	randomize()
	# Wybór losowego kąta w radianach (od 0 do 2*PI, czyli pełne 360 stopni)
	var random_angle = randf() * TAU
	# Ustawienie początkowego kierunku i prędkości
	velocity = Vector2.RIGHT.rotated(random_angle) *400

func _physics_process(delta: float) -> void:
	# Przesunięcie postaci i sprawdzenie, czy doszło do kolizji
	var collision = move_and_collide(velocity * delta)
	
	# Jeśli postać uderzyła w ścianę:
	if collision:
		# Odbicie wektora prędkości względem normalnej powierzchni ściany
		velocity = velocity.bounce(collision.get_normal())
