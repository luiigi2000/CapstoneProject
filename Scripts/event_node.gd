extends Node2D

@onready var button = $Button
var tween_speed = 1.25
var tween_offset = .05
var files = DirAccess.get_files_at("res://Events")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true:
		var tween = get_tree().create_tween()
		tween.tween_property(button, "scale", Vector2(.5+tween_offset, .5+tween_offset), tween_speed)
		tween.tween_property(button, "scale", Vector2(.5-tween_offset,.5-tween_offset), tween_speed)
		await tween.finished


func _on_option_pressed(event_file,i):
	for stat in event_file.effects[event_file.available_choices.find(i)]:
		Autoload.all_stats[stat[0]] += stat[1]
	Autoload.update_stats()

func _on_button_pressed() -> void:
	var event_file = load("res://Events/" + files[randi() % files.size()])
	$VBoxContainer/Label.text = event_file.event
	button.disabled = true
	for i in event_file.available_choices:
		var option_button = Button.new()
		option_button.text = i
		$VBoxContainer.add_child(option_button)
		option_button.pressed.connect(_on_option_pressed.bind(event_file,i))
	
