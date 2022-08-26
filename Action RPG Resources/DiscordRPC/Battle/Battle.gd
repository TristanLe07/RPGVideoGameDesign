extends Node2D

func _ready():
	update_activity()
	
func update_activity() -> void:
	var activity = Discord.Activity.new()
	activity.set_type(Discord.ActivityType.Playing)
	activity.set_state("Playing Pokémon")
	activity.set_details("Battling a Trainer!")

	var assets = activity.get_assets()
	assets.set_large_image("logo")
	assets.set_large_text("Pokémon: The Game")
	assets.set_small_image("logo")
	assets.set_small_text("Pokémon: The Game")

	var result = yield(Discord.activity_manager.update_activity(activity), "result").result
	if result != Discord.Result.Ok:
		push_error(result)
