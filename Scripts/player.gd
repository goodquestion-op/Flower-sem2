extends CharacterBody2D


const SPEED = 70.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _physics_process(delta: float) -> void:
	process_movment()
	move_and_slide()
	

func process_movment() -> void:
	var direction := Input.get_vector("left","right","up","down")
	
	var last_direction = direction
	
	velocity = direction * SPEED
	process_animation(direction)
	
	#run or idle logic
func process_animation(direction) -> void:
	if velocity != Vector2.ZERO:
		play_animation("Walk",direction)
		#print(velocity)
		#print_rich("Walk")
	elif velocity == Vector2.ZERO:
		play_animation("Idle",direction)
		#print(velocity)
		#print("Idle")
	
	#to play an animation based on direction
func play_animation(prefix: String,dir: Vector2) -> void:
	if dir.x != 0:
		animated_sprite_2d.flip_h = dir.x < 0
		animated_sprite_2d.play(prefix +"_Right")
		
	#elif dir.x < 0:
	#	animated_sprite_2d.play(prefix +"_Left")
		
	elif dir.y >= 0:
		animated_sprite_2d.play(prefix +"_Forward")
		
	elif dir.y <= 0:
		animated_sprite_2d.play(prefix +"_Up")
	
	


func _on_area_2d_mouse_entered() -> void:
	pass # Replace with function body.
