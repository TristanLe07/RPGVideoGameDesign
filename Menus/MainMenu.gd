extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


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
