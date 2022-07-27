extends Node

onready var enemy = $Enemy
onready var playerStats = $PlayerStats
onready var buttons = $Ui/GridContainer

func _ready():
	start_player_turn()

func start_enemy_turn():
	buttons.hide()
	if enemy != null:
		enemy.attack(playerStats)
		yield(enemy, "end_turn")
	start_player_turn()
	
func start_player_turn():
	buttons.show()
	playerStats.ap = playerStats.max_ap
	yield(playerStats, "end_turn")
	start_enemy_turn()

func _on_Attack_pressed():
	if enemy != null:
		enemy.take_damage(4)
		playerStats.ap -=1


func _on_Enemy_enemy_died():
	buttons.hide()
	enemy = null


func _on_Heal_pressed():
	pass # Replace with function body.
