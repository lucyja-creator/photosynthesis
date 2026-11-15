extends CanvasLayer
func _ready():
	self.hide() 

func _process(delta: float) -> void:
	if self.visible:
		return
		
	var enemies = get_tree().get_nodes_in_group("enemies")
	if enemies.size() == 0:
		game_over()
		return
		


func _on_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()

func game_over():
	get_tree().paused = true
	self.show()
	
	
