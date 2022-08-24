extends Node

const UnitsBattle = preload("res://InGameBattle/UnitsBattle.tres")

onready var battleActionButtons = $Ui/GridContainer

func _ready():
	start_player_turn()

func start_enemy_turn():
	battleActionButtons.hide()
	var enemy = UnitsBattle.Enemy
	if enemy != null:
		enemy.attack()
		yield(enemy, "end_turn")
	start_player_turn()
	
func start_player_turn():
	battleActionButtons.show()
	var playerStats = UnitsBattle.PlayerStats
	playerStats.ap = playerStats.max_ap
	yield(playerStats, "end_turn")
	start_enemy_turn()


func _on_Enemy_enemy_died():
	battleActionButtons.hide()

