extends KinematicBody2D

# variaveis
export var speed: = 60 #var para mover personagem
onready var _danca_ratinho_danca = $AnimationPlayer


# move nosso ratinho
func _physics_process(delta):
	# move personagem e faz animacao
	if Input.is_action_pressed("move_up"):
		move_and_slide(Vector2(0.0, -speed))
		_danca_ratinho_danca.play("walk_up")
		
	elif Input.is_action_pressed("move_left"):
		move_and_slide(Vector2(-speed, 0.0))
		_danca_ratinho_danca.play("walk_left")
		
	elif Input.is_action_pressed("move_down"):
		move_and_slide(Vector2(0.0, speed))
		_danca_ratinho_danca.play("walk_down")
		
	elif Input.is_action_pressed("move_right"):
		move_and_slide(Vector2(speed, 0.0))
		_danca_ratinho_danca.play("walk_right")
		
	elif yield(get_node("AnimationPlayer"), "animation_finished"):
	 _danca_ratinho_danca.stop()
