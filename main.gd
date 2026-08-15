extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Autoload.population = 1000
	Autoload.food = 100
	Autoload.water = 1300
	Autoload.energy = 1300
	Autoload.housing = 1300
	Autoload.update_stats()
	print(Autoload.pop_state)

	
	
