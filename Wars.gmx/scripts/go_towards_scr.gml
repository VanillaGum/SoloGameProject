if (instance_exists(enemy_target) && enemy_target != noone) {
    move_towards_point(enemy_target.x,enemy_target.y,user_speed);
    
}else {
    enemy_target = noone;
}
