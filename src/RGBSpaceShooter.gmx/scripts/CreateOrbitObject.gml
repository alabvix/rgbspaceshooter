/**
* This function creates an instance of a base orbit object,
* which is a visual object that´s orbits around a target one.
*
* argument 0: The orbit object. Must be an instance of obj_orbit_base. 
* argument 1: The target object.
* argument 2: The orbit spead.
* argument 3: The orbit object start position.
* argument 4: x position to create the orbit object.
* argument 5: y position to create the orbit object.
*
* return: orbit object instance id.
*/

var a_orbit_object = argument[0]
var a_target_object = argument[1]
var a_orbit_speed = argument[2]
var a_current_orbit_position = argument[3]
var a_x = argument[4]
var a_y = argument[5]

var inst = instance_create(a_x, a_y, a_orbit_object) 
with(inst) {
    _target = a_target_object
    _orbit_speed = a_orbit_speed
    _current_orbit_position = a_current_orbit_position
}

return inst 
