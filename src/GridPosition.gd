extends TextureRect

var sun_texture = preload("res://assets/Sun.png")
var star_texture = preload("res://assets/Star.png")
var clover_texture = preload("res://assets/Clover.png")
var diamond_texture = preload("res://assets/Diamond.png")
var square_texture = preload("res://assets/Square.png")
var circle_texture = preload("res://assets/Circle.png")

var constants_script = preload("res://src/Constants.gd")
var constants

func _ready():
	constants = constants_script.new()
	
func set_starting_position():
	self.modulate = constants.STARTING_POSITION_COLOR
	
func clear_starting_position():
	self.modulate = constants.DEFAULT_COLOR

func set_highlight():
	$Error.hide()
	$Highlight.show()
	
func set_error():
	$Highlight.hide()
	$Error.show()
		
func clear_overlay():
	$Highlight.hide()
	$Error.hide()
	
func set_shape(shape, color):
	$Shape.show()
	
	match shape:
		constants.SHAPES.SUN:
			$Shape.texture = sun_texture
		constants.SHAPES.STAR:
			$Shape.texture = star_texture
		constants.SHAPES.CLOVER:
			$Shape.texture = clover_texture
		constants.SHAPES.DIAMOND:
			$Shape.texture = diamond_texture
		constants.SHAPES.SQUARE:
			$Shape.texture = square_texture
		constants.SHAPES.CIRCLE:
			$Shape.texture = circle_texture
			
	$Shape.modulate = constants.COLOR_OBJECTS[color]
	
func clear_shape():
	$Shape.hide()
	
