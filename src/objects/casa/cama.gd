extends RigidBody2D

onready var animacao = $Animation

var player

func on_body_entered(body):
	if body.is_in_group("Player"):
		player = body
		

func _process(delta) -> void:
	if Input.action_press("interact") and player != null:
		animacao.play("dormindo")
