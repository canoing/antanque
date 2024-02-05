extends Node
class_name movi_XD

@export var speed = 32.0 


var character: CharacterBody2D

func setup(character2D: CharacterBody2D):
	character = character2D
	
	
func move(impu_vector: Vector2):
	character.velocity = impu_vector.normalized() * speed
	
	character.move_and_slide()
	
func stop_momen():
	character.velocity = Vector2.ZERO
	
