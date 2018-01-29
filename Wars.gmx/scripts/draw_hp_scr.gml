//draw_enemy_health(hp,maxhp,xpos,ypos)
hp = argument0;
maxhp = argument1;
xpos = argument2;
ypos = argument3;
hp_percent = hp/maxhp;
if (hp_percent < 0) {
    hp_percent = 0;
}
//Draw The Background Health
draw_sprite(spr_health_background,0,x+xpos,y+ypos);
//Draw the Filler Health 
draw_sprite_ext(spr_healthbar,0,x+xpos,y+ypos,
hp_percent,
1,0,c_white,1);
//Draw the Border of Healthbar
draw_sprite(spr_health_border,0,x+xpos,y+ypos);
