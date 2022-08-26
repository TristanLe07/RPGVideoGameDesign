extends Area2D

var entered = false

func _on_NPCs_body_entered(_body: PhysicsBody2D):
	entered = true
	$NPC/AnimationPlayer.play("AlertNPC")

func _on_NPCs_body_exited(_body):
	entered = false
	$NPC/AnimationPlayer.play("NormalNPC")
	
func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene("res://Menus/PokemonDuel.tscn")



