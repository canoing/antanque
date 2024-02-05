extends CharacterBody2D
class_name Player 

var  velocidad_de_disparo = 100
var disparo = velocidad_de_disparo
var velo_rotacion = 0.5
var dire_rota = 0

#crea la bala
@export var bullet:PackedScene
@export var aceleracion = 60
@onready var AnimatedSprite = $torreta/mira/AnimatedSprite2D
func _physics_process(delta: float )-> void:
#movimiento
	rotation += dire_rota * velo_rotacion * delta
	dire_rota = 0
	velocity  = Vector2()
	
	if Input.is_action_pressed("right"):
		dire_rota += 1
		
	if Input.is_action_pressed("left"):
		dire_rota -= 1
		
	
	if Input.is_action_pressed("up"):
		velocity  = Vector2(aceleracion, 0).rotated(rotation)
		
		
		
	if Input.is_action_pressed("down"):
		
		velocity  = Vector2(-aceleracion + 10, 0).rotated(rotation)
		
		
		
	if disparo == 0:
		#cambia la animacion de la mira
		AnimatedSprite.stop()
		AnimatedSprite.frame = 0
	if Input.is_action_pressed("dispara") and disparo == 0:
		var newbullet = bullet.instantiate()
		#propiedad de la bala 
		newbullet.global_position = $torreta/spaw_bala.global_position
		newbullet.direccion = $torreta/mira.global_position - $torreta.global_position
		newbullet.rotation = $torreta.rotation  
	
		get_parent().add_child(newbullet)
		disparo = velocidad_de_disparo
		
		
		
	elif disparo > 0:
		AnimatedSprite.stop()
		AnimatedSprite.frame = 1
		
		disparo -= 1
		
		
		
		

	velocity  = velocity.normalized() * aceleracion
	move_and_slide()
	


