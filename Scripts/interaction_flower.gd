extends Node2D


class_name Flower_2
@onready var hitBox : Area2D = $Area2D
var harvestable = false 
var Areabody : String
@export var starting_resources : int = 1
@export var item: InvItem
var player : Node2D



var current_resources  : int :
	set (value):
		if(value <= 0):
			print("Collecting: ",item)
			player.collect(item)
			queue_free() 

func _ready() -> void:
	current_resources = starting_resources
	
func harvest(amount: int):
	current_resources -= amount #think this is redundent for me
	pass
		
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting: ",item)
			player.collect(item)
			queue_free()
			
			pass	 




	 
	


func _on_area_2d_area_entered(area: Area2D) -> void:
	#print(area)
	Areabody =str(area)
	if "Interactio_Area" in Areabody:
		harvestable = true
	
	
	
	


func _on_area_2d_area_exited(area: Area2D) -> void:
	if harvestable == true:
		harvestable = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	Areabody =str(body)
	if "Player" in Areabody:
		player = body
		print(player)
	
