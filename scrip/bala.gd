extends CharacterBody2D
class_name bala
var direccion:Vector2

@export var velocida:int



func _physics_process(delta):
	velocity = direccion * velocida
	
	
	move_and_slide()
	
