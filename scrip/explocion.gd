extends Node2D
const time = 10
var bung = time

func _physics_process(_delta):
	if bung == 0:
		$".".queue_free()
		
	else:
		bung -= 1
		
		
		
