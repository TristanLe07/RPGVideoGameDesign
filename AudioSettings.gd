extends Control


func _ready():
	pass


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), value)


func _on_MainMenu_pressed():
	get_tree().change_scene("res://Menus/MainMenu.tscn")


func _on_SoundEffects_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("SoundEffects"), value)


func _on_Controls_pressed():
	get_tree().change_scene("res://Menus/Controls.tscn")
