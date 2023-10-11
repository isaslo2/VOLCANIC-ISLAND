// get camera pos
var camX = camera_get_view_x(camera);
var camY = camera_get_view_y(camera);

// target cam pos
var targetX = oPlayer.x - RES_W/2;
var targetY = oPlayer.y - RES_H/2;

// clamp to room bounds
targetX = clamp(targetX, 0, room_width - RES_W);
targetY = clamp(targetY, 0, room_width - RES_H);

// move camera to target pos
camX = lerp(camX, targetX, CAM_SMOOTH);
camY = lerp(camY, targetY, CAM_SMOOTH);

// set camera pos
camera_set_view_pos(camera, camX, camY);