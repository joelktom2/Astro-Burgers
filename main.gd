extends Node

@export var customer_scene: PackedScene
var money


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_game()
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $Customer.position.x >= $CustEndPos.position.x:
		$Customer.stop()
		$TakeOrderButton.position = $Customer.position + Vector2(0,-200)
		$TakeOrderButton.show()

func start_game():
	money = 0
	$Player.spawn($StartPosition.position)
	

	$Customer.spawn($CustStartPos.position)
	
	$Customer.velocity = Vector2(100.0,0.0)


func _on_take_order_button_pressed() -> void:
	
	pass # Replace with function body.
