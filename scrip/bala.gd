extends CharacterBody2D
class_name bala
var direccion:Vector2
const time = 50
var explocion = time
@export var exploci:PackedScene
@export var velocida = 10



func _physics_process(_delta):
	velocity = direccion * velocida
	
	
	move_and_slide()
	
	if explocion ==  0:
		var NewExplo = exploci.instantiate()
		NewExplo.global_position = $".".global_position
		get_parent().add_child(NewExplo)
		explocion = time
		$".".queue_free()
	else:
		
		explocion -= 1
		
	
	
