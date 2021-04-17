extends GridContainer

var grid_position_scene = preload("res://src/GridPosition.tscn")

var constants_script = preload("res://src/Constants.gd")
var constants

var grid_positions = []

func _ready():
	constants = constants_script.new()
	__initialize_board()
	
func __initialize_board():
	for i in range(0, pow(constants.BOARD_SIZE, 2)):
		var scene = grid_position_scene.instance()
		self.add_child(scene)
		grid_positions.append(scene)
	
	var center = get_grid_position(
		Vector2(
			floor(constants.BOARD_SIZE / 2), 
			floor(constants.BOARD_SIZE / 2)
		)
	)
	center.set_starting_position()

func get_grid_position(pos):
	return grid_positions[pos.y * constants.BOARD_SIZE + pos.x]
