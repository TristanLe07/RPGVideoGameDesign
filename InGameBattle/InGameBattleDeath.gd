extends Control


func _ready():
	pass

func _on_ContinueBtn_pressed():
	get_tree().change_scene("res://Action RPG Resources/World/PokeCenter.tscn")
