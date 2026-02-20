extends Control

var selected_items: Array[ItemData] = []

var match_color := 0
var use_dislike := 0

@export var guest: GuestData

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func recalc():
	match_color = 0
	use_dislike = 0
	
	for item in selected_items:
		if item.color == guest.color:
			match_color += 1
		if guest.dislike in item.tags:
			use_dislike = true
