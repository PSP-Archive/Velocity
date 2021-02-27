#include "vlib.h"

PSP_MODULE_INFO ( "Test vLib", 0, 1, 1 );
PSP_MAIN_THREAD_ATTR ( THREAD_ATTR_USER | THREAD_ATTR_VFPU );

const int TIMES = 500;

int main() {
	// Overclock the psp to 333mhz
	scePowerSetClockFrequency ( 333, 333, 166 );

	start_vLib(); // Init vLib. The RGB is the clear color.
	set_linear_filter ( ON ); // Turn the linear filter on.

	set_fog ( 10, 20, RGB ( 0, 0, 0 ) ); // Setup the fog.

	// Load an image
	Image *texture = load_image ( "data/texture.png", IN_VRAM );
	// Load a model
	Model *model = load_model ( "data/model.obj" );

	// Variables for our camera
	float xCamPos = 0.0f;
	float yCamPos = 0.0f;
	float zCamPos = 0.0f;

	float xCamRot = 3.4f;
	float yCamRot = 0.0f;
	float zoomCam = -2.0f;

	float tempx, tempz, padDist, rotCurrent; // Some variables for out analog controls.

	float camRate;

	texture->height = 50.0f;
	texture->width = 50.0f;

	for ( ;; ) {
		update_delta_time();

		///////////////////
		// Input Section //
		///////////////////
		read_input ( MASK_NONE, 0, 0 );

		if ( button->pressed.start )
			sceKernelExitGame(); // Exit when start is pressed

		// Movement
		if ( button->analogY <= -40 || button->analogY >= 40 || button->analogX <= -40 || button->analogX >= 40 ) {
			//get analog angle. pad.Ly is negative when you move up, use opposite
			rotCurrent = atan2f ( button->analogY, button->analogX );
			//need this to have symmetrical pad angles (since cam's 0 angle is down)
			if ( rotCurrent < -PI / 2 ) rotCurrent += 2 * PI;
			//modifies movement according to current cam angle and pad angle
			tempx = vfpu_cosf ( yCamRot + rotCurrent );
			tempz = vfpu_sinf ( yCamRot + rotCurrent );

			padDist = sqrtf ( button->analogX * button->analogX + button->analogY * button->analogY );
			if ( padDist > 128 ) padDist = 128;

			xCamPos += tempx * padDist * 0.05f * deltaTime;
			zCamPos += tempz * padDist * 0.05f * deltaTime;
		}

		camRate = 3.0f * deltaTime;
		// Adjust camera position
		if ( button->held.up && zoomCam < -2.1f )
			zoomCam += camRate;	// In
		if ( button->held.down && zoomCam > -4.8f )
			zoomCam -= camRate;	// Out
		if ( button->held.R )
			yCamRot += camRate;	// Right
		if ( button->held.L )
			yCamRot -= camRate;	// Left

		if ( button->held.up )
			texture->y -= 300.0f * deltaTime;
		if ( button->held.down )
			texture->y += 300.0f * deltaTime;
		if ( button->held.left )
			texture->x -= 300.0f * deltaTime;
		if ( button->held.right )
			texture->x += 300.0f * deltaTime;

		if ( button->held.cross )
			texture->height -= 300.0f * deltaTime;
		if ( button->held.triangle )
			texture->height += 300.0f * deltaTime;
		if ( button->held.square )
			texture->width -= 300.0f * deltaTime;
		if ( button->held.circle )
			texture->width += 300.0f * deltaTime;

		if ( button->held.R )
			texture->angle += 3.0f * deltaTime;	// Right
		if ( button->held.L )
			texture->angle -= 3.0f * deltaTime;	// Left

		///////////
		// Setup //
		///////////

		// Start the drawing routine
		start_drawing();
		// Clear the screen
		clear_screen();

		/////////////
		// Drawing //
		/////////////

		// Set our camera
		set_camera_3rd_person(xCamPos,yCamPos,zCamPos, xCamRot,yCamRot, zoomCam);
		// Draw model
		draw_model(model, texture);

		// Draw image
		texture->centerX = -(texture->width/2);
		texture->centerY = -(texture->height/2);
		
		draw_image ( texture );

		///////////////
		// Finish Up //
		///////////////

		// End the drawing routine
		end_drawing();
		// Display the current statistics
		fps();
		// Flip the screen
		flip_screen();
	}

	stop_vLib(); // Unit vLib
	sceKernelExitGame(); // Exit
	return 0; // Return 0 on success! (won't happen though, we just exited!)
}
