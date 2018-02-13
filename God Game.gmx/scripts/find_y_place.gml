/*Find Y Of Where The Object Can Be Placed At*/
var locx = x;
var locy = mouse_y; //Use this for searching Downwards
var locy2 = mouse_y; // Use This for searching Upwards
var exitLoop = false; //Loop until find spot to place at
var lookDown = true; //Look for spot downwards of mouse_y
var exitLoopAmt = 0;
while (exitLoop == false) {
    //Ensures a infinite loop does not occur
    if (exitLoopAmt < 10000) {
        exitLoopAmt++;
    }else {
        exitLoop = true;
    }
    
    if (!place_meeting(locx, locy,obj_floor) && place_meeting(locx, locy+1,obj_floor)) {
        //Found Spot To Place Object
        y = locy;
        exitLoop = true;
        move_snap(64,1)
    }else {
        if (lookDown == true ) {
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
