extends Area2D

# CAMA
func _on_cama_body_entered(body: Node) -> void:
	var colidiu = true 
	if Input.is_action_just_pressed("interact"):
		$Animation.play("dormindo")
		if body.is_in_group("Player"):
			body.hide()



func _on_cama_body_exited(body: Node) -> void:
	$Animation.play("vazia")
	if body.is_in_group("Player"):
		body.show()


# COMPUTADOR
func _on_Computador_body_entered(body: Node) -> void:
	if Input.is_action_just_pressed("interact"):
		$Animation.play("programando")
		if body.is_in_group("Player"):
			body.hide()

func _on_Computador_body_exited(body: Node) -> void:
	$Animation.play("parado")
	if body.is_in_group("Player"):
		body.show()

