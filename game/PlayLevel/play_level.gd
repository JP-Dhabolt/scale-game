extends Node2D

@onready var user_interface: UserInterface = %UserInterface

func _on_user_interface_quit():
	get_tree().quit()

func _on_user_interface_resume():
	get_tree().paused = false

func _on_user_interface_restart():
	print("Restarting Game")
