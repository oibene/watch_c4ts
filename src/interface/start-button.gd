extends Button 

func _ready() -> void:
	pass # Replace with function body.

# efeito se entrou ou saiu do botão
func _on_start_focus_entered():
	$Sprite.modulate.r = 0.5
	$Sprite.modulate.g = 0.5
	$Sprite.modulate.b = 0.5

func _on_start_focus_exited():
	$Sprite.modulate.r = 1
	$Sprite.modulate.g = 1
	$Sprite.modulate.b = 1

# ao ser pressionado
func _on_start_pressed():
	$Sprite.modulate.r = 0.5
	$Sprite.modulate.g = 0.5
	$Sprite.modulate.b = 0.5
	get_tree().change_scene("res://src/rooms/casa/quarto.tscn")
