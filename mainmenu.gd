extends Control
var coins_value = 0
@onready var experience_progress: ProgressBar = %ExperienceProgress
@onready var nick_name: Label = %NickName

var characters = 'abcdefghijklmnopqrstuvwxyz'

func generate_word(chars, length):
	var word: String
	var n_char = len(chars)
	for i in range(length):
		word += chars[randi()% n_char]
	return word

func _on_grant_coins_btn_pressed() -> void:
	coins_value = coins_value + 1
	print(coins_value)
	experience_progress.value = float(coins_value)
	var new_word = generate_word(characters, 10)
	print(new_word)
	nick_name.text = new_word
	
	
