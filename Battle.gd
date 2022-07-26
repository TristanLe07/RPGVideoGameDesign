extends Node

onready var enemy = $Enemy

func _on_Button_pressed():
	enemy.hp -= 4
