//Update Current Location
y = objPlayer.y - 64;

if (objPlayer.facing == "right") {
    if (x < objPlayer.x + maxOffset - panBuffer) {
        if (x < objPlayer.x) {
            x += (panCatchUpAcceleration * cameraPanSpeed);
        }
        else {
            x += 4 * cameraPanSpeed;
        }
    }
    else {
        x = objPlayer.x + maxOffset;
    }
}
else if (objPlayer.facing == "left") {
    if (x > objPlayer.x - maxOffset + panBuffer) {
        if (x > objPlayer.x) {
            x -= (panCatchUpAcceleration * cameraPanSpeed);
        }
        else {
            x -= 4 * cameraPanSpeed;
        }
    }
    else {
        x = objPlayer.x - maxOffset;
    }
}

