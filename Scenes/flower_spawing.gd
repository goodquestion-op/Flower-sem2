extends Node2D

@onready var flower = preload("res://Scenes/Objects/new_flower.tscn")
var instance = flower.instantiate()


func _ready() -> void:
	add_child(instance)
