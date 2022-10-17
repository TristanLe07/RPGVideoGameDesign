extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().connect("connected_to_server", self, "connected")
	
func connected():
	if not Net.is_host:
		rpc("begin_game")
		begin_game()

remote func begin_game():
	get_tree().change_scene("res://WorldMultiplayer.tscn")

func _on_PlayButton_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_CreditsButton_pressed():
	get_tree().change_scene("res://Menus/Credits.tscn")


func _on_OptionsBtn_pressed():
	get_tree().change_scene("res://Menus/AudioSettings.tscn")


func _on_ControlsBtn_pressed():
	get_tree().change_scene("res://Menus/Controls.tscn")


func _on_ChangeLogBtn_pressed():
	get_tree().change_scene("res://Menus/ChangeLog.tscn")
