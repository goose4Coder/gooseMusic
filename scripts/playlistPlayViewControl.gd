extends Control

@onready var playlistLabel=$VBoxContainer/PlaylistName
@onready var playlistFirstSongs=$VBoxContainer/FirstSongs
const composition=preload("res://scripts/classStorage/composition.gd")
const playlist = preload("res://scripts/classStorage/playlist.gd")

var current_playlist=null

func _load_playlists():
	current_playlist=playlist.new("coolMusic",[composition.new("a"),composition.new("b")])
	playlistLabel.text=current_playlist.get_basic_info()["name"]
	playlistFirstSongs.text=current_playlist.get_basic_info()["first_songs"]


func _ready():
	_load_playlists()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
