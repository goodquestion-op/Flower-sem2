extends Node2D


class_name Flower_2
@onready var hitBox : Area2D = $Area2D
var harvestable = false 

@export var starting_resources : int = 1
#@export var New_flower : 
var current_resources  : int :
	set (value):
		if(value <= 0):
			queue_free() 

func _ready() -> void:
	current_resources = starting_resources

func harvest(amount: int):
	current_resources -= amount #think this is redundent for me
	pass
	
func _process(_delta: float) -> void:
	if harvestable == true:
		print("harvestable from plant")
		
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting")
			queue_free()
			
			pass	 



func _on_area_2d_body_exited(body: Node2D) -> void:
	if (body is Harvester):
		harvestable = false 
		#print("harvestable ="+harvestable)
	 


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body is Harvester):
		harvestable = true 
		#print("harvestable ="+harvestable)
	
