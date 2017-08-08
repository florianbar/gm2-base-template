/// @description ResolutionSet()

var cameraWidth = camera_get_view_width(view_camera[0]);
var cameraHeight = camera_get_view_height(view_camera[0]);

var displayWidth = display_get_width();
var displayHeight = display_get_height();

//Device aspect ratio
var aspect = displayWidth / displayHeight;

if (aspect > 1)
{
    //Landscape
    var width  = round(cameraHeight * aspect);
    var height = cameraHeight;
}
else 
{
    //Portrait
    var width  = cameraWidth;
    var height = round(cameraWidth / aspect);     
}

//Set camera dimensions
camera_set_view_width = width;
camera_set_view_height = height;

//Fit view into display's screen (port)
//view_wport = displayWidth;
//view_hport = displayHeight;

//Set the size of the game window
//window_set_size(width, height);

//Resize application surface to our adjusted values
surface_resize(application_surface, cameraWidth, cameraHeight);