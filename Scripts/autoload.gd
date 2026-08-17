extends Node

var population := 100
var population_rate: float
var energy: float
var housing: float
var farmland: float
var food: float
var water: float
var qol: float
var capacity: float
enum pop_state_enum{UNDER,STABLE,OVER}
var pop_state: float
var population_load: float
var all_stats: Dictionary

func update_stats():
	capacity = min(food, water, housing, energy)
	population_load = (population/capacity) * 100
	if population_load > 100:
		pop_state = pop_state_enum.OVER
	elif population_load < 59:
		pop_state = pop_state_enum.UNDER
	else:
		pop_state = pop_state_enum.STABLE
	all_stats = {
		"population": population,
		"population_rate": population_rate,
		"energy": energy,
		"housing": housing,
		"farmland": farmland,
		"food": food,
		"water": water,
		"qol": qol,
		"capacity": capacity,
		"pop_state": pop_state,
		"population_load": population_load
	}
		
		

		
	
	
