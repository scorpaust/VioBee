extends Node

const new_spider = preload("res://Scenes/Spider.tscn")

const new_flower = preload("res://Scenes/Flower.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func spawn_spider():
	var spider = new_spider.instance()
	spider.position.x = int(rand_range(0, 720))
	spider.position.y = 0
	get_node("Container").add_child(spider)
	pass

func spawn_flower():
	var flower = new_flower.instance()
	flower.position.x = int(rand_range(0, 720))
	flower.position.y = 0
	get_node("Container").add_child(flower)
	pass

func _on_Timer_Spider_timeout():
	spawn_spider()


func _on_Timer_Flower_timeout():
	spawn_flower()
