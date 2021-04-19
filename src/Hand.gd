extends GridContainer

var grid_position_scene = preload("res://src/GridPosition.tscn")

var grid_positions = []
var hand_size

func initialize(size):
	self.hand_size = size
	for i in range(0, size):
		var scene = grid_position_scene.instance()
		self.add_child(scene)
		grid_positions.append(scene)

func get_grid_position(index):
	if index < 0 or index > self.hand_size - 1:
		return null
	return grid_positions[index]
