extends CharacterBody2D


class_name Rock
@onready var hitBox : Area2D = $RockHarvest
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
		
	 
	



	
	
	
	


func _on_area_2d_area_exited(area: Area2D) -> void:
	if harvestable == true:
		harvestable = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	Areabody =str(body)
	if "Player" in Areabody:
		harvestable = true
		player = body
		print(player)
