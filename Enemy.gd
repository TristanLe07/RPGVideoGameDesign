extends Node2D

var hp = 25 setget set_hp
var target = null

onready var timer = $Timer
onready var hpLabel = $hpLabel
onready var animationPlayer = $AnimationPlayer

signal enemy_died
signal end_turn

func set_hp(new_hp):
	hp = new_hp
	hpLabel.text = str(hp) + "hp"

func attack(target) -> void:
	yield(get_tree().create_timer(0.4), "timeout")
	animationPlayer.play("Attack")
	self.target = target
	yield(animationPlayer, "animation_finished")
	self.target = null
	emit_signal("end_turn")

func deal_damage():
	var main = get_tree().current_scene
	var playerStats = main.find_node("PlayerStats")
	if playerStats != null:
		playerStats.take_damage(4)


func take_damage(amount):
	self.hp -= amount
	if is_dead():
		emit_signal("enemy_died")
		queue_free()
	else:
		animationPlayer.play("Shake")
	
func is_dead():
	return hp <= 0
