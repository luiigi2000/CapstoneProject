extends Node


enum pop_state_enum{UNDER,STABLE,OVER}
var pop_state: float
var all_stats = {
		"population": 100,
		"population_rate": 0,
		"energy": 200,
		"housing": 200,
		"food": 200,
		"water": 200,
		"qol": 0,
		"capacity": 0,
		"pop_state": 0,
		"population_load": 0
	}

func update_stats():
	all_stats["capacity"] = min(
		all_stats["food"],
		all_stats["water"],
		all_stats["housing"],
		all_stats["energy"]
	)

	if all_stats["capacity"] > 0:
		all_stats["population_load"] = (
			float(all_stats["population"]) / all_stats["capacity"]
		) * 100
	else:
		all_stats["population_load"] = 0

	if all_stats["population_load"] > 100:
		all_stats["pop_state"] = pop_state_enum.OVER
	elif all_stats["population_load"] < 59:
		all_stats["pop_state"] = pop_state_enum.UNDER
	else:
		all_stats["pop_state"] = pop_state_enum.STABLE
		

		
	
	
