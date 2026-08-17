extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Autoload.all_stats["population"] = 1000
	Autoload.all_stats["food"] = 100
	Autoload.all_stats["water"] = 1300
	Autoload.all_stats["energy"] = 1300
	Autoload.all_stats["housing"] = 1300
	
	Autoload.update_stats()
