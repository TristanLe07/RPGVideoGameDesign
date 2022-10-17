extends Area2D


var entered = false

func _on_LeavePokeCenter_body_entered(_body: PhysicsBody2D):
	entered = true


func _on_LeavePokeCenter_body_exited(_body):
	entered = false


func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene("res://World.tscn")
