extends Node2D


class_name Flower_1

@export var starting_resources : int = 1

var current_resources  : int :
	set (value):
		if(value <= 0):
			queue_free() 

func _ready() -> void:
	current_resources = starting_resources
func harvest(amount: int):
	current_resources -= amount #think this is redundent for me
	pass
