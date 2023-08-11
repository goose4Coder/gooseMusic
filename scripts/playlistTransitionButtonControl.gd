extends "res://scripts/transitionButtonControl.gd"


# Called when the node enters the scene tree for the first time.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_click():
	get_parent()._change_current_playlist()
	super._on_click()
