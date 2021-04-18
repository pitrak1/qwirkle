extends "res://addons/gut/test.gd"

var constants_script = preload("res://src/Constants.gd")
var constants

var grid_position_scene = preload("res://src/GridPosition.tscn")
var grid_position

func before_each():
	constants = constants_script.new()
	grid_position = grid_position_scene.instance()
	self.add_child(grid_position)
	
func after_each():
	self.remove_child(grid_position)
	
func test_sets_and_clears_starting_position():
	assert_false(grid_position.is_starting_position())
	grid_position.set_starting_position()
	assert_true(grid_position.is_starting_position())
	grid_position.clear_starting_position()
	assert_false(grid_position.is_starting_position())
	
func test_sets_and_clears_error_status():
	assert_null(grid_position.get_status())
	grid_position.set_error()
	assert_eq(grid_position.get_status(), 'error')
	grid_position.clear_status()
	assert_null(grid_position.get_status())
	
func test_sets_and_clears_highlight_status():
	assert_null(grid_position.get_status())
	grid_position.set_highlight()
	assert_eq(grid_position.get_status(), 'highlight')
	grid_position.clear_status()
	assert_null(grid_position.get_status())
	
func test_error_and_highlight_overwrite():
	grid_position.set_error()
	assert_eq(grid_position.get_status(), 'error')
	grid_position.set_highlight()
	assert_eq(grid_position.get_status(), 'highlight')
	grid_position.set_error()
	assert_eq(grid_position.get_status(), 'error')
	
func test_sets_and_clears_shape_and_color():
	assert_null(grid_position.get_shape())
	assert_null(grid_position.get_shape_color())
	grid_position.set_shape_and_color(constants.SHAPES.DIAMOND, constants.COLORS.PURPLE)
	assert_eq(grid_position.get_shape(), constants.SHAPES.DIAMOND)
	assert_eq(grid_position.get_shape_color(), constants.COLORS.PURPLE)
	grid_position.clear_shape()
	assert_null(grid_position.get_shape())
	assert_null(grid_position.get_shape_color())
