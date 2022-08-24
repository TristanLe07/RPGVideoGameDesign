extends Area2D

func _on_Area2D_body_entered(body):
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene("res://InGameBattle/Battle.tscn")
