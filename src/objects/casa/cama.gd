extends RigidBody2D

onready var animacao = $Animation

var dormiu = false

func _ready() -> void:
	pass # Replace with function body.

func collide_with(colisao: KinematicCollision2D, collider: KinematicBody2D):
	if !dormiu: #se dormiu eh falso
		dormiu = true
