extends Control

func _ready():
	$TurnIndicator.set_player("Player 1")
	$Player1Button.connect("pressed", self, "on_Player1Button_pressed")
	$Player2Button.connect("pressed", self, "on_Player2Button_pressed")
	
func on_Player1Button_pressed():
	print("Player 1")
	$TurnIndicator.set_turn("Player 1")
	
func on_Player2Button_pressed():
	print("Player 2")
	$TurnIndicator.set_turn("Player 2")


