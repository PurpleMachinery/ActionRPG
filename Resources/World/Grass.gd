extends Node2D

func create_grass_effect():
	var GrassEffect = load("res://Resources/Effects/GrassEffect.tscn")
	var grassEffect = GrassEffect.instance()
	get_parent().add_child(grassEffect)
	grassEffect.global_position = self.position


func _on_Hurtbox_area_entered(area):
	create_grass_effect()
	queue_free()
