extends CharacterBody2D
class_name torreta 
@export var rota_to = 2



func _physics_process(delta):
	if Input.is_action_pressed("gr_de"):
		rotation += rota_to * delta
	if Input.is_action_pressed("gr_iz"):
		rotation += -rota_to * delta
