extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var event1 = preload("res://Events/event1.tres")
	print(event1.event)
	print(event1.available_choices)
