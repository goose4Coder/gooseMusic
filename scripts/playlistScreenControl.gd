extends Node

@onready var exit_button=$ExitPanel/ExitButton
# Called when the node enters the scene tree for the first time.

func _ready():
	exit_button._initialize("res://screens/MainScreen.tscn","Exit")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
