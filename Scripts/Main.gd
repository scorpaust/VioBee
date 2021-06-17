extends Node

const new_spider = preload("res://Scenes/Spider.tscn")

const new_flower = preload("res://Scenes/Flower.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var pts = 0

var lifes = 3

var gameover = false

<<<<<<< HEAD
signal damaged

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("BackgroundMusic").play()
=======
# Called when the node enters the scene tree for the first time.
func _ready():
>>>>>>> 3e64c8f45548f165ec484c7d5ba14b4828c6cb8b
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
	if gameover == false:
		spawn_spider()


func _on_Timer_Flower_timeout():
	if gameover == false:
		spawn_flower()


func _on_Area_Bee_area_entered(area):
	if area.name == "Area_Spider":
<<<<<<< HEAD
		
		emit_signal("damaged")
		
=======
>>>>>>> 3e64c8f45548f165ec484c7d5ba14b4828c6cb8b
		if (lifes == 3):
			lifes -= 1
			get_node("Bar/3").hide()
		
		elif (lifes == 2):
			lifes -= 1
			get_node("Bar/2").hide()
			
		elif (lifes == 1):
			lifes -= 1
<<<<<<< HEAD
			gameover = true
			get_node("BackgroundMusic").stop()
			get_node("Bar/3").hide()
			get_node("Bee").queue_free()
			get_node("GameOver").show()
			get_node("Restart").start()
			
		
	if area.name == "Area_Flower":
		pts += 1
		get_node("PickupSFX").play()
		get_node("Bar/Score").text = str(pts)
=======
			get_node("Bar/3").hide()
			gameover = true
			get_node("Bee").queue_free()
			get_node("GameOver").show()
			get_node("Restart").start()
		
		
	if area.name == "Area_Flower":
		pts += 1
		get_node("Bar/ScoreLabelText").text = str(pts)
>>>>>>> 3e64c8f45548f165ec484c7d5ba14b4828c6cb8b
		area.get_parent().queue_free()



func _on_Restart_timeout():
	get_tree().reload_current_scene()
	pass # Replace with function body.
