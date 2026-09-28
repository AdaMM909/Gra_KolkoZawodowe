extends Node2D


func _on_setignsy_pressed() -> void:
	get_tree().change_scene_to_file("res://sceny/settings_w_menu.tscn")
