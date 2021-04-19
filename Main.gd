extends Control

var constants_script = preload("res://src/Constants.gd")
var constants

func _ready():
	constants = constants_script.new()
	$TurnIndicator.set_turn("Player 1")
	$Board.initialize(constants.BOARD_SIZE)


