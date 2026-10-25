extends CharacterBody2D


const SPEED = 70.0

var last_direction: Vector2
#var harvestable = true
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@export var inv: Inv 


func _physics_process(_delta: float) -> void:
	process_movment()
	move_and_slide()
	

func process_movment() -> void:
	
	
	var direction := Input.get_vector("left","right","up","down")
	
	
	if (direction != Vector2.ZERO):
		last_direction = direction
		
	
	process_animation(last_direction)
	velocity = direction * SPEED
	
	
	
	
	#run or idle logic
func process_animation(_direction) -> void:
	if velocity != Vector2.ZERO:
		play_animation("Walk",last_direction)
		#print(velocity)
		#print_rich("Walk")
	elif velocity == Vector2.ZERO:
		play_animation("Idle",last_direction)
		#print(velocity)
		#print("Idle")
	
	#to play an animation based on direction
func play_animation(prefix: String,dir: Vector2) -> void:
	if dir.x != 0:
		animated_sprite_2d.flip_h = dir.x < 0
		animated_sprite_2d.play(prefix +"_Right")
		
	elif dir.y >= 0:
		animated_sprite_2d.play(prefix +"_Forward")
		
	elif dir.y <= 0:
		animated_sprite_2d.play(prefix +"_Up")
	
func collect(item):
	print("collecting: ",item)
	inv.insert(item)
