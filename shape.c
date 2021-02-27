/*

	Velocity  v1.5
	Copyright 2006, 2007 Gabriel Anderson

	This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

*/

//---------------------------------------------------------------------------------//
// Includes                                                                        //
//---------------------------------------------------------------------------------//

#include "vlib.h"

//---------------------------------------------------------------------------------//
// Shape                                                                           //
//---------------------------------------------------------------------------------//

const int POINTS = 0;
const int LINES = 1;
const int LINE_STRIP = 2;
const int TRIANGLES = 3;
const int TRIANGLE_STRIP = 4;
const int TRIANGLE_FAN = 5;
const int SPRITES = 6;

// Some simple shapes
// Pixel
void draw_point ( float x, float y, u32 color ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 1 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color;
	vertices[0].x = x;
	vertices[0].y = y;
	vertices[0].z = 0;

	sceGuDrawArray ( GU_POINTS, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 1, 0, vertices );
}

// Lines
void draw_line ( float startX, float startY, float endX, float endY, u32 color ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 2 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color;
	vertices[0].x = startX;
	vertices[0].y = startY;
	vertices[0].z = 0;

	vertices[1].color = color;
	vertices[1].x = endX;
	vertices[1].y = endY;
	vertices[1].z = 0;

	sceGuDrawArray ( GU_LINES, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 2, 0, vertices );
}

void draw_grad_line ( float startX, float startY, float endX, float endY, u32 color1, u32 color2 ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 2 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color1;
	vertices[0].x = startX;
	vertices[0].y = startY;
	vertices[0].z = 0;

	vertices[1].color = color2;
	vertices[1].x = endX;
	vertices[1].y = endY;
	vertices[1].z = 0;

	sceGuDrawArray ( GU_LINES, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 2, 0, vertices );
}

// Rectangles
void draw_rect ( float x, float y, float width, float height, u32 color ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 4 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color;
	vertices[0].x = x;
	vertices[0].y = y;
	vertices[0].z = 0;

	vertices[1].color = color;
	vertices[1].x = x + width;
	vertices[1].y = y;
	vertices[1].z = 0;

	vertices[2].color = color;
	vertices[2].x = x + width;
	vertices[2].y = y + height;
	vertices[2].z = 0;

	vertices[3].color = color;
	vertices[3].x = x;
	vertices[3].y = y + height;
	vertices[3].z = 0;

	sceGuDrawArray ( GU_LINE_STRIP, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 4, 0, vertices );
}

void draw_grad_rect ( float x, float y, float width, float height, u32 color1, u32 color2, u32 color3, u32 color4 ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 4 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color1;
	vertices[0].x = x;
	vertices[0].y = y;
	vertices[0].z = 0;

	vertices[1].color = color2;
	vertices[1].x = x + width;
	vertices[1].y = y;
	vertices[1].z = 0;

	vertices[2].color = color3;
	vertices[2].x = x + width;
	vertices[2].y = y + height;
	vertices[2].z = 0;

	vertices[3].color = color4;
	vertices[3].x = x;
	vertices[3].y = y + height;
	vertices[3].z = 0;

	sceGuDrawArray ( GU_LINE_STRIP, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 4, 0, vertices );
}

void draw_fill_rect ( float x, float y, float width, float height, u32 color ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 2 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color;
	vertices[0].x = x;
	vertices[0].y = y;
	vertices[0].z = 0;

	vertices[1].color = color;
	vertices[1].x = x + width;
	vertices[1].y = y + width;
	vertices[1].z = 0;

	sceGuDrawArray ( GU_SPRITES, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 2, 0, vertices );
}

void draw_fill_grad_rect ( float x, float y, float width, float height, u32 color1, u32 color2, u32 color3, u32 color4 ) {
	CP_Vertex_2D* vertices = ( CP_Vertex_2D* ) sceGuGetMemory ( 4 * sizeof ( CP_Vertex_2D ) );

	vertices[0].color = color1;
	vertices[0].x = x;
	vertices[0].y = y;
	vertices[0].z = 0;

	vertices[1].color = color2;
	vertices[1].x = x + width;
	vertices[1].y = y;
	vertices[1].z = 0;

	vertices[2].color = color3;
	vertices[2].x = x;
	vertices[2].y = y + height;
	vertices[2].z = 0;

	vertices[3].color = color4;
	vertices[3].x = x + width;
	vertices[3].y = y + height;
	vertices[3].z = 0;

	sceGuDrawArray ( GU_TRIANGLE_STRIP, GU_COLOR_8888 | GU_VERTEX_16BIT | GU_TRANSFORM_2D, 4, 0, vertices );
}
