extends Control

@onready var playlist_label=$VBoxContainer/PlaylistName
@onready var playlist_first_songs=$VBoxContainer/FirstSongs
const composition=preload("res://scripts/classStorage/composition.gd")
const playlist = preload("res://scripts/classStorage/playlist.gd")



func _initialize(playlist_to_set:playlist):
	playlist_label.set_text(playlist_to_set.get_basic_info()["name"])
	playlist_first_songs.set_text(playlist_to_set.get_basic_info()["first_songs"])
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
