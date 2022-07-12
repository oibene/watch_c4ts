extends Node2D

var dia = true

func _ready() -> void:
	if dia:
		$Animation.play("dia")

	else:
		$Animation.play("noite")

