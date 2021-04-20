extends GridContainer

var grid_position_scene = preload("res://src/GridPosition.tscn")

var grid_positions = []
var hand_size
var tile_stack

func initialize(size, stack):
	self.hand_size = size
	self.tile_stack = stack
	for i in range(0, size):
		var scene = grid_position_scene.instance()
		self.add_child(scene)
		grid_positions.append(scene)
		draw(i)

func get_grid_position(index):
	if index < 0 or index > self.hand_size - 1:
		return null
	return grid_positions[index]

func draw(index):
	var tile = self.tile_stack.draw()
	grid_positions[index].set_shape_and_color(tile.shape, tile.color)
