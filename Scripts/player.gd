extends CharacterBody2D


const SPEED = 300.0
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	process_movment()
	move_and_slide()
	

func process_movment() -> void:
	var direction := Input.get_vector("left","right","up","down")
	
	velocity = direction * SPEED
	
func play_animation(dir: Vector2) -> void:
	if dir.x > 0:
		animated_sprite_2d.play()
	 
	
