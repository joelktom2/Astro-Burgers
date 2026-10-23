extends Node2D
@export var items:PackedScene
var ticket: Array[String] = [] # stack of items

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func next():
	var item_types = Array($Item.sprite_frames.get_animation_names())
	var item_name = item_types.pick_random()
	$Item.animation = item_name
	ticket.append(item_name)
	#$Item.play()
	
func backward():
	next() # need to make some sort of circular queue for this work

func spawn(pos):
	position = pos
	show()
