///find_closest_enemy_scr
//Objective
//Find Closest Enemy To Attack
enemies = ds_list_create();
var user_team = argument0;
var userx = x;
var usery = y;
var range = 100000;
var shortest_distance = range*2;
var current_cloest = noone;
enemy = collision_circle_list_scr(x,y,100,human_obj,false,true,team);
with (human_obj) {
    if(team != user_team) {
        if(point_distance(userx, usery, x, y) <= range && 
        point_distance(userx, usery, x, y) < shortest_distance) {
            current_cloest = id;
        }
    }
}
return current_cloest;

