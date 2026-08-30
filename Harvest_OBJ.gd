extends StaticBody2D

class_name Flower

@export var starting_resources : int = 0

var current_resources  : int 

func _ready() -> void:
	current_resources = starting_resources
