extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Net.set_ids()
	create_players()

func create_players():
	for id in Net.peer_ids:
		create_player(id)
	create_player(Net.net_id)
	
func create_player(id):
	var p = preload("res://Action RPG Resources/Player/Player.tscn").instance()
	add_child(p)
	p.initialized(id)
