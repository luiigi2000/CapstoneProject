extends Node2D

@onready var button = $Button
var tween_speed = 1.25
var tween_offset = .05
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	while true:
		var tween = get_tree().create_tween()
		tween.tween_property(button, "scale", Vector2(.5+tween_offset, .5+tween_offset), tween_speed)
		tween.tween_property(button, "scale", Vector2(.5-tween_offset,.5-tween_offset), tween_speed)
		await tween.finished




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
