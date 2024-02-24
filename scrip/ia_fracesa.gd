extends CharacterBody2D




var arriba = false
var abajo = false
var derrecha = false
var  izquierda = false

var jugador = false #cambiar desoues


var velo_rotacion = 0.5
var dire_rota = 0

var fuego = false


var  velocidad_de_disparo = 150
var disparo = velocidad_de_disparo

@export var bullet:PackedScene





#crea la bala

@export var aceleracion = 60


var time = 100
func _physics_process(delta: float )-> void:
	

	if time == 0:
		derrecha = randf() > 0.5
		izquierda = randf() > 0.5
		arriba = randf() > 0.5
		abajo = randf() > 0.1
		time = randi() %  1000
		if abajo == arriba:
			abajo = !abajo
		if derrecha or izquierda:
			time = randi() %  100
		
		
		
	else:
		
		time -= 1
	
	
#movimiento
	rotation += dire_rota * velo_rotacion * delta
	dire_rota = 0
	velocity  = Vector2()
	if !jugador:
		if derrecha:
			dire_rota += 1
		
		if izquierda:
			dire_rota -= 1
		
	
		if arriba:
			velocity  = Vector2(aceleracion, 0).rotated(rotation)
		
		
		
		if abajo:
		
			velocity  = Vector2(-aceleracion + 10, 0).rotated(rotation)
		
	
		
	#XD#
	


	if fuego and disparo == 0:
		var newbullet = bullet.instantiate()
		#propiedad de la bala 
		newbullet.global_position = $torreta_frase/bala_ene.global_position
		newbullet.direccion =  $torreta_frase/zona_disparo/mira.global_position - $torreta_frase/bala_ene.global_position 
		
	
		get_parent().add_child(newbullet)
		disparo = velocidad_de_disparo
		
	
		
	elif disparo > 0:

		disparo -= 1
		
	
	

	velocity  = velocity.normalized() * aceleracion
	

	move_and_slide()

	

