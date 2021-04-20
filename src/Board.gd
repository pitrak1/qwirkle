extends GridContainer

var grid_position_scene = preload("res://src/GridPosition.tscn")

var grid_positions = []
var board_size
	
func initialize(size):
	board_size = size
	for _i in range(0, pow(size, 2)):
		var scene = grid_position_scene.instance()
		self.add_child(scene)
		grid_positions.append(scene)
	
	var center = get_grid_position(
		Vector2(
			floor(size / 2), 
			floor(size / 2)
		)
	)
	center.set_starting_position()

func get_grid_position(pos):
	if pos.y * self.board_size + pos.x >= grid_positions.size():
		return null
	return grid_positions[pos.y * self.board_size + pos.x]
