extends Node2D
class_name Harvester


@onready var hitBox : Area2D = $Area2D
var harvestable = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting")
			pass
			#queue_free() 
		


func _on_area_2d_body_exited(body: Node2D) -> void:
	harvestable = false
	print("leaving:",body) 


func _on_area_2d_body_entered(body: Node2D) -> void:
	harvestable = true
	print("entering:",body) 
