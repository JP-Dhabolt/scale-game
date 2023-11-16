class_name UserInterface
extends CanvasLayer

signal resume
signal restart
signal quit

@onready var menu_panel: PanelContainer = %MenuPanel
var is_paused: bool = false

func unpause():
	is_paused = false
	menu_panel.hide()
	emit_signal("resume")

func pause():
	is_paused = true
	menu_panel.show()

func toggle_pause():
	get_tree().paused = !get_tree().paused
	if is_paused:
		unpause()
	else:
		pause()

func _ready():
	menu_panel.hide()

func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		toggle_pause()

func _on_resume_button_pressed():
	unpause()

func _on_restart_button_pressed():
	emit_signal("restart")

func _on_exit_button_pressed():
	print("quit")
	emit_signal("quit")
