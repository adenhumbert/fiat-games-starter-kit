var _check = true;
var _rm = room_next(room);
var  _rprev = _rm;

while (_check = true)
    {
    var _cam = room_get_camera(_rm, 0);
    camera_destroy(_cam);
    var _newcam = camera_create_view((960 - VIEW_WIDTH) div 2, (640 - VIEW_HEIGHT) div 2, VIEW_WIDTH, VIEW_HEIGHT);
    room_set_camera(_rm, 0, _newcam);
    room_set_viewport(_rm, 0, true, 0, 0, VIEW_WIDTH, VIEW_HEIGHT);
    room_set_view_enabled(_rm, true);
    if _rm = room_last
        {
        _check = false;
        }
    else
        {
        _rprev = _rm;
        _rm = room_next(_rprev);
        }
    }