extends Node



var OVER_POPULATION = 10

var house_max := 100
const population = "population"


var STATS = {
	"wealth": 0,
	"population": 0,
	"crime": 0,
}

var RATES = {
	"population": 1,
	"crime": 0
}

var POLICIES = {
	
}

var DECISIONS = {
	"Problem1": {
		"Dialogue": "Your citizens demand a change with your border",

		"Answers": {
			"Close your borders": {
				"Effects": [[RATES["population"], 1], [RATES["crime"], -1]],
				"Chosen": true,
				"Permanent": false
			},

			"Open your borders": {
				"Effects": [[RATES["population"], 1], [RATES["crime"], -1]],
				"Chosen": false,
				"Permanent": false
			},

			"Keep your borders open": {
				"Effects": [[RATES["population"], 1], [RATES["crime"], -1]],
				"Chosen": false,
				"Permanent": true
			}
		}
	}
}

func _ready() -> void:
	print(DECISIONS["Problem1"]["Dialogue"])
	for i in DECISIONS["Problem1"]["Answers"]:
		if DECISIONS["Problem1"]["Answers"][i]["Permanent"] == true or DECISIONS["Problem1"]["Answers"][i]["Chosen"] == true:
			print(i)
			
		
