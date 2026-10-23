extends Node2D
var velocity: Vector2 = Vector2.ZERO
@export var speed = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#screen_size = get_viewport_rect().size
	hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += delta*velocity*speed
	#position.clamp(start.position, end.position)

func spawn(pos):
	position = pos
	show()
	$AnimatedSprite2D.animation = "walk"
	$AnimatedSprite2D.play()
	
func stop():
	velocity = Vector2.ZERO
	$AnimatedSprite2D.animation = "idle"
