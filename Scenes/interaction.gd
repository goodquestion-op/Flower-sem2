extends Node2D
class_name Harvester


@onready var hitBox : Area2D = $Area2D
var harvestable = false

var nearbody : Node2D
@onready var tree = get_tree()
@onready var Flower = get_node("res://Scenes/Objects/new_flower.tscn")
@onready var Flower_node = 1

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting")
			#Flower_node.harvest
			pass
			#queue_free() 
		


func _on_area_2d_body_exited(body: Node2D) -> void:
	harvestable = false
	
	print("leaving:",body) 


func _on_area_2d_body_entered(body: Node2D) -> void:
	harvestable = true
	nearbody = body
	print("entering:",nearbody) 
