@icon("res://sprit/torreta_so.png")
extends CharacterBody2D



var mover = false
var buscar = false
var buscar_iz = false
var mover_d = false 
var time = 50
var objetivo = null 
@export var rota_to = 1.5


func _physics_process(delta):
	
	if $zona_disparo.player == null:
		if time == 0:
			mover = randf() > 0.1
			mover_d = randf() > 0.1
			time =  randi() % 50
		else:
			time -= 1
	else:
		mover = false
		mover_d = false
		
	if mover:
		rotation += rota_to * delta
	if mover_d:
		rotation += -rota_to * delta
		
	
		
	
	




	
