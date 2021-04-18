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
	
func is_starting_position():
	return self.modulate == constants.STARTING_POSITION_COLOR
	
func set_starting_position():
	self.modulate = constants.STARTING_POSITION_COLOR
	
func clear_starting_position():
	self.modulate = constants.DEFAULT_COLOR

func get_status():
	if $Error.is_visible_in_tree():
		return 'error'
	elif $Highlight.is_visible_in_tree():
		return 'highlight'
	else:
		return null

func set_highlight():
	$Error.hide()
	$Highlight.show()
	
func set_error():
	$Highlight.hide()
	$Error.show()
		
func clear_status():
	$Highlight.hide()
	$Error.hide()
	
func get_shape():
	if not $Shape.is_visible_in_tree():
		return null
		
	match $Shape.texture:
		sun_texture:
			return constants.SHAPES.SUN
		star_texture:
			return constants.SHAPES.STAR
		clover_texture:
			return constants.SHAPES.CLOVER
		diamond_texture:
			return constants.SHAPES.DIAMOND
		square_texture:
			return constants.SHAPES.SQUARE
		circle_texture:
			return constants.SHAPES.CIRCLE
	
func get_shape_color():
	if not $Shape.is_visible_in_tree():
		return null
		
	for i in range(0, constants.COLOR_OBJECTS.size()):
		if $Shape.modulate == constants.COLOR_OBJECTS[i]:
			return constants.COLORS.values()[i]
	
func set_shape_and_color(shape, color):
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
	
