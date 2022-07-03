extends KinematicBody2D

# variaveis
var velocidade: Vector2
export(int) var speed #var para mover personagem
onready var animacao = $animation

# move nosso ratinho
func _physics_process(_delta: float) -> void: #roda durante todo nosso jogo
	mexe()
	anima()
	
# move personagem
func mexe() -> void:
	# move ele em 8 direcoes mui pica
	var direcao: Vector2 = Vector2 (
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	).normalized()
	
	velocidade = direcao * speed
	velocidade = move_and_slide(velocidade)
	
# funcao para animar personagem
func anima() -> void:
	if velocidade != Vector2.ZERO:
		if Input.is_action_pressed("move_right"):
			animacao.play("walk_right")
		if Input.is_action_pressed("move_left"):
			animacao.play("walk_left")
		if Input.is_action_pressed("move_down"):
			animacao.play("walk_down")
		if Input.is_action_pressed("move_up"):
			animacao.play("walk_up")
	else:
		if Input.is_action_pressed("move_right"):
			animacao.play("idle_right")
		if Input.is_action_pressed("move_left"):
			animacao.play("idle_left")
		if Input.is_action_pressed("move_down"):
			animacao.play("idle_down")
		if Input.is_action_pressed("move_up"):
			animacao.play("idle_up")
