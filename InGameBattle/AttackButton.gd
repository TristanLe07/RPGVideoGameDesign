extends "res://InGameBattle/ActionButton.gd"

func _on_pressed():
	var enemy = UnitsBattle.Enemy
	var playerStats = UnitsBattle.PlayerStats
	if enemy != null and playerStats != null:
		enemy.take_damage(3)
		playerStats.mp += 2
		playerStats.ap -=1
