extends Control

var is_paused: bool = false setget set_is_paused 
onready var pause_menu = $"."

func _ready():
	pause_menu.visible = false
	set_process_input(true)

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		pause_menu.visible = true
		
		self.is_paused = !is_paused
	elif event.is_action_pressed("ui_accept"):
		
		# Handle the "enter" button press event here
		pass
	elif event.is_action_pressed("ui_cancel"):
		# Handle the "esc" button press event here
		pass

func set_is_paused(value: bool):
	is_paused = value 
	get_tree().paused = is_paused
	visible = is_paused

func get_is_paused() -> bool:
	return is_paused

func _on_Resumebtn_pressed():
	self.is_paused = false

func _on_Quitbtn_pressed():
	get_tree().quit()
