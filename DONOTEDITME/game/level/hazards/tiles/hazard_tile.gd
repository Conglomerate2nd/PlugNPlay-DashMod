extends Node2D
## A basic hazard tile class that can be used to create props meant to deal damage to the player
## when the player hitbox enters the hazard's hurtbox. All this script does is store the
## damage that the hazard does to the player. In order for an object to deal damage in general it must have
## an Area2D component whose collision layer is either "Enemy", "EnemyProjectile" or "Hazard", and it must
## have a get_source_damage() method that returns a float representing the damage to be dealt to the
## player.
class_name HazardTile

## The damage this hazard tile deals
@export var damage: float = 1

## A method required for any object that deals object
func get_source_damage() -> float:
	return damage
