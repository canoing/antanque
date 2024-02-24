extends Area2D

var player = null

func _on_body_entered(body):
	if body != self:
		player = body
		$"../..".fuego = true
	


func _on_body_exited(body):
	player = null
	$"../..".fuego = false
