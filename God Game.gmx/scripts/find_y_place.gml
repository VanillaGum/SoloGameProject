/*Find Y Of Where The Object Can Be Placed At*/
var locx = x;
var locy = mouse_y; //Use this for searching Downwards
var locy2 = mouse_y; // Use This for searching Upwards
var exitLoop = false; //Loop until find spot to place at
var lookDown = true; //Look for spot downwards of mouse_y
while (exitLoop == false) {
    if (!place_meeting(locx, locy,obj_floor) && place_meeting(locx, locy+1,obj_floor) && place_meeting(locx, locy, placed_parent)) {
        //Found Spot To Place Object
        y = locy;
        exitLoop = true;
    }else {
        if (lookDown == false ) {
            if(!place_meeting(locx,locy, obj_floor)) {
                locy += 1;
            }else {
                lookDown = false;
                locy = locy2
                locy -= 1;
            }
        }else {
            locy -= 1;
        }
    }
}
