extends Control



func _on_menu_button_about_to_popup() -> void:
	$MenuButton.item_count = 0
	for i in Autoload.all_stats:
		$MenuButton.get_popup().add_item(i+": "+str(Autoload.all_stats[i]))
