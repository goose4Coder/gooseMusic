extends Node2D

var playlist_to_change_to=null
# Called when the node enters the scene tree for the first time.
func _initialize(scene_to_set, text_to_set, playlist_to_set):
	playlist_to_change_to=playlist_to_set
	get_child(0)._initialize(scene_to_set, text_to_set)
	
func _change_current_playlist():
	GLOBAL_DATA.current_playlist=playlist_to_change_to

