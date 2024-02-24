extends Area2D


var player = null

func _on_body_entered(body):

	if body != self:
		player = body
		$"..".jugador = true
		



func _on_body_exited(_body):
	player = null
	$"..".jugador = false
	
	

