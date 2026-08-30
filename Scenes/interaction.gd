extends Node2D

@onready var hitBox : Area2D = $Area2D




func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body is Flower):
		print("bingus")
	pass # Replace with function body.
