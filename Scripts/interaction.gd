extends Node2D
class_name Harvester


@onready var hitBox : Area2D = $Interactio_Area
var harvestable = false
var BODY : String

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting")
			
			#print(bodies)
			pass

func _on_area_2d_body_exited(body: Node2D) -> void:
	if harvestable == true:
		harvestable = false
	#print("leaving:",body) 

func _on_area_2d_body_entered(body: Node2D) -> void:
	#print("entering:",body)
	BODY = str(body)
	if "New flower" in BODY:
		#print("Touching Flower :) ")
		harvestable = true
		
