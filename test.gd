extends Control

var cohesion = 0
var color = 0
var flavor = 0

var tasteCat = ""
var colorCat = "blue"

# light and citrus, blue



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_strawberrySorbet_pressed() -> void:
	if colorCat == "pink":
		color += 2
	else:
		color -= 2
	$colorLabel.text = "color palette : " + str(color)
	$strawberrySorbet.hide()                     # hide() hides whole UI


func _on_blue_lemon_scones_pressed() -> void:
	if colorCat == "blue":
		color += 2
	else:
		color -= 2
	$colorLabel.text = "color palette : " + str(color)
	$blueLemonScones.hide()


func _on_lilac_boquet_pressed() -> void:
	if colorCat == "lilac":
		color += 2
	elif colorCat == "purple":
		color += 1
	else:
		color -= 2
	$colorLabel.text = "color palette : " + str(color)
	$lilacBoquet.hide()


func _on_blue_tea_set_pressed() -> void:
	if colorCat == "blue":
		color += 2
	else:
		color -= 2
	$colorLabel.text = "color palette : " + str(color)
	$blueTeaSet.hide()
