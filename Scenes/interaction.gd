extends Node2D
class_name Harvester


@onready var hitBox : Area2D = $Area2D
var harvestable = false
var string : String

@onready var tree = get_tree()
#@onready var Flower = 
@onready var Flower_node = 1


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting")
			
			#var bodies = $Area2D.get_overlapping_bodies()
			#print(bodies)
			#Flower_node.harvest
			pass
			#queue_free() 
		


func _on_area_2d_body_exited(body: Node2D) -> void:
	if harvestable == true:
		harvestable = false
	#body.harvestable = false
	print("leaving:",body) 


func _on_area_2d_body_entered(body: Node2D) -> void:
	
	print("entering:",body)
	string = str(body)
	if "New flower" in string:
		print("Touching Flower :) ")
		harvestable = true

		
