extends Node2D


class_name Flower

@export var starting_resources : int = 1
var harvestable = false 

var current_resources  : int :
	set (value):
		if(value <= 0):
			queue_free() 

func _ready() -> void:
	current_resources = starting_resources
func harvest(amount: int):
	current_resources -= amount #think this is redundent for me
	pass
	
func _on_area_2d_body_exited(body: Node2D) -> void:
	if (body is Harvester):
		harvestable = false 
		print("harvestable ="+harvestable)
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body is Harvester):
		harvestable = true 
		print("harvestable ="+harvestable)
	pass # Replace with function body.
