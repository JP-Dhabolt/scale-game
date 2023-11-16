extends Node2D

@export var play_level: PackedScene

func _on_start_button_pressed():
	get_tree().change_scene_to_packed(play_level)

func _on_exit_button_pressed():
	get_tree().quit()
