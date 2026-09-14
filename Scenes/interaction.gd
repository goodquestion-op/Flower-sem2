extends Node2D
class_name Harvester

@onready var hitBox : Area2D = $Area2D

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		
		print("harvesting")


func _on_area_2d_body_exited(body: Node2D) -> void:
	if(body is Flower):
		print("leaving Flower")
	elif(body is Flower_2):
		print("Leaving Flower_2" )


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body is Flower):
		print("entering Flower" )
	elif(body is Flower_2):
		print("entering Flower_2" )
