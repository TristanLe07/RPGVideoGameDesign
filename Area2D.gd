extends Area2D


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Battle/Battle.tscn")


func _on_NPCs_body_entered(body):
	pass # Replace with function body.
