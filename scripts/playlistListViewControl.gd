extends VBoxContainer

const playlist_shortcut_builder = preload("res://scripts/playListShortcutBuilder.gd")
const composition=preload("res://scripts/classStorage/composition.gd")
const playlist = preload("res://scripts/classStorage/playlist.gd")
var playlists=[]

func _initialize_view():
	playlist_shortcut_builder.new()._build_playlist_shortcut(self,playlists,20,100)
		
func initialize_playlists():
	var to_return=[]
	var playlist_to_add=null
	for i in range(0,20):
		playlist_to_add=playlist.new("aboba"+str(i+1),[composition.new("song"+str(i+1)),composition.new("song"+str(i+2))])
		to_return.append(playlist_to_add)
	return to_return

func _ready():
	self.playlists=initialize_playlists()
	_initialize_view()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
