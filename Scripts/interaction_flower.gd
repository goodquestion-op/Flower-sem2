extends CharacterBody2D


class_name Flower_2
@onready var hitBox : Area2D = $Area2D
@onready var Help_text: Label = $Label
var harvestable = false 
var Areabody : String
@export var item: InvItem
var player : Node2D





func _ready() -> void:
	Help_text.visible = false
	

		
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("harvest"):
		if (harvestable == true):
			print("harvesting: ",item)
			player.collect(item)
			await(4) 
			queue_free()
			
			pass	 



func _process(delta: float) -> void:
	if harvestable == true:
		Help_text.visible = true
	else:
		Help_text.visible = false
		
	 
	


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
	
