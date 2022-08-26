extends Control


func _on_Button1_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_Button2_pressed():
	get_tree().change_scene("res://Battle/Battle.tscn")
