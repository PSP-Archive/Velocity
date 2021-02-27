#include <vlib.h>

PSP_MODULE_INFO("Test vLib", 0, 1, 1);
PSP_MAIN_THREAD_ATTR(THREAD_ATTR_USER|THREAD_ATTR_VFPU);

int main()
{
	// Overclock the psp to 333MHz
	scePowerSetClockFrequency ( 333, 333, 166 );
	start_vLib(); // Init vLib. The RGB is the clear color.
	set_linear_filter(ON); // Turn the linear filter on.

	// Load an image
	Image *texture = load_image("data/texture.png",IN_VRAM);
	
	for(;;)
	{
		update_delta_time();
		
		///////////////////
		// Input Section //
		///////////////////
		read_input(MASK_NONE,0,0);
		
		if(button->pressed.start)
			sceKernelExitGame(); // Exit when start is pressed

		
		if(button->held.up)
			texture->y -= 200.0 * deltaTime;
		if(button->held.down)
			texture->y += 200.0 * deltaTime;
		if(button->held.left)
			texture->x -= 200.0 * deltaTime;
		if(button->held.right)
			texture->x += 200.0 * deltaTime;
		
		if(button->held.cross)
			texture->height -= 200.0 * deltaTime;
		if(button->held.triangle)
			texture->height += 200.0 * deltaTime;
		if(button->held.square)
			texture->width -= 200.0 * deltaTime;
		if(button->held.circle)
			texture->width += 200.0 * deltaTime;
		
		if(button->held.L)
			texture->angle -= 3.0 * deltaTime;
		if(button->held.R)
			texture->angle += 3.0 * deltaTime;
		
		///////////
		// Setup //
		///////////
		start_drawing(); // Start the drawing routine
		clear_screen(); // Clear the screen
		
		///////////////////
		// Start Drawing //
		///////////////////
		
		// Draw image
		draw_image(texture); // Draw image
		
		///////////////
		// Finish Up //
		///////////////
		end_drawing(); // End the drawing routine.
		fps(); // Output current fps (FAST)
		//Stats(); // Display the current statistics(FPS, Ram, Vram, and Graphics mem left)(SLOW)
		flip_screen(); // Flip the screen
		//waitVSync(); // Sync the screen to 60 fps
	}
	
	stop_vLib(); // Uninit vLib
	sceKernelExitGame(); // Exit
	return 0; // Return 0 on success! (won't happen though, we just exited!)
}
