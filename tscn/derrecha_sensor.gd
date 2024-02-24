extends Area2D

var objetivo = null
var xd = true

func _on_body_entered(body):
	
	
	if body != self:
		print("hay algo")
		xd = true
		objetivo = body
		$"..".mover = false
		$"..".mover_d = false
		
		
		
	
		


func _on_body_exited(body):
	objetivo = null
