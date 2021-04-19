extends Node

enum SHAPES {SUN, STAR, CLOVER, DIAMOND, SQUARE, CIRCLE}
enum COLORS {RED, BLUE, GREEN, PURPLE, YELLOW, ORANGE}
enum DIRECTIONS {UP, RIGHT, DOWN, LEFT}

var COLOR_OBJECTS = [
	Color(1, 0, 0, 1),
	Color(0, 0, 1, 1),
	Color(0, 1, 0, 1),
	Color(1, 0, 1, 1),
	Color(1, 1, 0, 1),
	Color(1, 0.5, 0, 1)
]

var DEFAULT_COLOR = Color(0, 0, 0, 1)
var STARTING_POSITION_COLOR = Color(0.5, 1, 0.5, 1)

var BOARD_SIZE = 5
var HAND_SIZE = 7
