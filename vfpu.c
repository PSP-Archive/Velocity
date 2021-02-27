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
// VFPU		                                                                       //
//---------------------------------------------------------------------------------//

// Simple math functions
float vfpu_sinf ( float rad ) {
	float result = 0;
	__asm__ volatile (
	    "mtv	%1, S000\n"
	    "vcst.s	S001, VFPU_2_PI\n"
	    "vmul.s	S000, S000, S001\n"
	    "vsin.s	S000, S000\n"
	    "mfv	%0, S000\n"
    : "=r" ( result ) : "r" ( rad ) );
	return result;
}

float vfpu_cosf ( float rad ) {
	float result = 0;
	__asm__ volatile (
	    "mtv	%1, S000\n"
	    "vcst.s	S001, VFPU_2_PI\n"
	    "vmul.s	S000, S000, S001\n"
	    "vcos.s	S000, S000\n"
	    "mfv	%0, S000\n"
    : "=r" ( result ) : "r" ( rad ) );
	return result;
}

float vfpu_tanf ( float x ) {
	float result;
	// result = sin(x)/cos(x);
	__asm__ volatile (
	    "mtv      %1, S000\n"
	    "vcst.s   S001, VFPU_2_PI\n"
	    "vmul.s   S000, S000, S001\n"
	    "vrot.p   C002, S000, [s, c]\n"
	    "vdiv.s   S000, S002, S003\n"
	    "mfv      %0, S000\n"
    : "=r" ( result ) : "r" ( x ) );
	return result;
}

float vfpu_sqrtf ( float x ) {
	float result = 0;
	__asm__ volatile (
	    "mtv	 %1, S000\n"
	    "vsqrt.s S000, S000\n"
	    "mfv	 %0, S000\n"
    : "=r" ( result ) : "r" ( x ) );
	return result;
}

// Some functions for controlling the matrices
// Need to finish these, test, and finally release a new vLib once these are pretty stable!
void vfpu_identity_m ( ScePspFMatrix4 *m ) {
	__asm__ volatile (
	    "vmidt.q	M000\n"
	    "sv.q		C000, 0  + %0\n"
	    "sv.q		C010, 16 + %0\n"
	    "sv.q		C020, 32 + %0\n"
	    "sv.q		C030, 48 + %0\n"
    : "=m" ( *m ) );
}

void vfpu_translate_m ( ScePspFMatrix4 *m, float x, float y, float z ) {
	__asm__ volatile (
	    "mtv        %1, S030\n"
	    "mtv        %2, S031\n"
	    "mtv        %3, S032\n"
	    "lv.q C100,  0 + %0\n"
	    "lv.q C110, 16 + %0\n"
	    "lv.q C120, 32 + %0\n"
	    "lv.q C130, 48 + %0\n"

	    "vscl.q	C000, C100, S030\n"
	    "vscl.q	C010, C110, S031\n"
	    "vscl.q	C020, C120, S032\n"

	    "vadd.q	C130, C130, C000\n"
	    "vadd.q	C130, C130, C010\n"
	    "vadd.q	C130, C130, C020\n"

	    "sv.q C130, 48 + %0\n"
    : "+m" ( *m ) : "r" ( x ), "r" ( y ), "r" ( z ) );
}

void vfpu_rotateX_m ( ScePspFMatrix4 *m, float x ) {
	__asm__ volatile (
	    "lv.q    C200, 0  + %0\n"
	    "lv.q    C210, 16 + %0\n"
	    "lv.q    C220, 32 + %0\n"
	    "lv.q    C230, 48 + %0\n"
	    "mtv     %1, S130\n"
	    "vmidt.q M000\n"
	    "vcst.s  S101, VFPU_2_PI\n"
	    "vmul.s  S130, S130, S101\n"
	    "vrot.q  C010, S130, [ 0, c, s, 0]\n"
	    "vrot.q  C020, S130, [ 0,-s, c, 0]\n"
	    "vmmul.q M100, M200, M000\n"
	    "sv.q    C100, 0  + %0\n"
	    "sv.q    C110, 16 + %0\n"
	    "sv.q    C120, 32 + %0\n"
	    "sv.q    C130, 48 + %0\n"
    : "+m" ( *m ) : "r" ( x ) );
}

void vfpu_rotateY_m ( ScePspFMatrix4 *m, float y ) {
	__asm__ volatile (
	    "lv.q    C200, 0  + %0\n"
	    "lv.q    C210, 16 + %0\n"
	    "lv.q    C220, 32 + %0\n"
	    "lv.q    C230, 48 + %0\n"
	    "mtv     %1, S130\n"
	    "vmidt.q M000\n"
	    "vcst.s  S101, VFPU_2_PI\n"
	    "vmul.s  S130, S130, S101\n"
	    "vrot.q  C000, S130, [ c, 0,-s, 0]\n"
	    "vrot.q  C020, S130, [ s, 0, c, 0]\n"
	    "vmmul.q M100, M200, M000\n"
	    "sv.q    C100, 0  + %0\n"
	    "sv.q    C110, 16 + %0\n"
	    "sv.q    C120, 32 + %0\n"
	    "sv.q    C130, 48 + %0\n"
    : "+m" ( *m ) : "r" ( y ) );
}

void vfpu_rotateZ_m ( ScePspFMatrix4 *m, float z ) {
	__asm__ volatile (
	    "lv.q    C200, 0  + %0\n"
	    "lv.q    C210, 16 + %0\n"
	    "lv.q    C220, 32 + %0\n"
	    "lv.q    C230, 48 + %0\n"
	    "mtv     %1, S130\n"
	    "vmidt.q M000\n"
	    "vcst.s  S101, VFPU_2_PI\n"
	    "vmul.s  S130, S130, S101\n"
	    "vrot.q  C000, S130, [ c, s, 0, 0]\n"
	    "vrot.q  C010, S130, [-s, c, 0, 0]\n"
	    "vmmul.q M100, M200, M000\n"
	    "sv.q    C100, 0  + %0\n"
	    "sv.q    C110, 16 + %0\n"
	    "sv.q    C120, 32 + %0\n"
	    "sv.q    C130, 48 + %0\n"
    : "+m" ( *m ) : "r" ( z ) );
}

void vfpu_rotateXYZ_m ( ScePspFMatrix4 *m, float x, float y, float z ) {
	/*__asm__ volatile (
	       "mtv     %1, S030\n"
	       "vcst.s  S001, VFPU_2_PI\n"
	       "vmul.s  S030, S030, S001\n"
	       "vrot.q  C000, S030, [ c, s, 0, 0]\n"
	       "vrot.q  C010, S030, [-s, c, 0, 0]\n"
	       "sv.q    C000, 0  + %0\n"
	       "sv.q    C010, 16 + %0\n"
	       "sv.q    C020, 32 + %0\n"
	       "sv.q    C030, 48 + %0\n"
	       : "=m"(*m) : "r"(z));*/
}

void vfpu_rotateZYX_m ( ScePspFMatrix4 *m, float z, float y, float x ) {
	/*__asm__ volatile (
	       "mtv     %1, S030\n"
	       "vcst.s  S001, VFPU_2_PI\n"
	       "vmul.s  S030, S030, S001\n"
	       "vrot.q  C000, S030, [ c, s, 0, 0]\n"
	       "vrot.q  C010, S030, [-s, c, 0, 0]\n"
	       "sv.q    C000, 0  + %0\n"
	       "sv.q    C010, 16 + %0\n"
	       "sv.q    C020, 32 + %0\n"
	       "sv.q    C030, 48 + %0\n"
	       : "=m"(*m) : "r"(z));*/
}

void vfpu_scale_m ( ScePspFMatrix4 *m, float x, float y, float z ) {
	/*m->x.x *= x; m->x.y *= y; m->x.z *= z;
	m->y.x *= x; m->y.y *= y; m->y.z *= z;
	m->z.x *= x; m->z.y *= y; m->z.z *= z;

	__asm__ volatile (
		"vmidt.q M000\n"
		"mtv        %1, S030\n"
		"mtv        %2, S031\n"
		"mtv        %3, S032\n"
		"sv.q C000,  0 + %0\n"
		"sv.q C010, 16 + %0\n"
		"sv.q C020, 32 + %0\n"
		"sv.q C030, 48 + %0\n"
		: "=m"(*m) : "r"(x), "r"(y), "r"(z));*/
}

void vfpu_lookAt_m ( ScePspFMatrix4 *m, ScePspFVector3* eye, ScePspFVector3* center, ScePspFVector3* up ) {
	__asm__ volatile (
	    "vmidt.q M100\n"
	    // load eye, center, up vectors
	    "ulv.q    C000, %0\n"
	    "ulv.q    C010, %1\n"
	    "ulv.q    C020, %2\n"

	    // forward = center - eye
	    "vsub.t  R102, C010, C000\n"

	    // normalize forward
	    "vdot.t  S033, R102, R102\n"
	    "vrsq.s  S033, S033\n"
	    "vscl.t  R102, R102, S033\n"

	    // side = forward cross up
	    "vcrsp.t R100, R102, C020\n"
	    "vdot.t  S033, R100, R100\n"
	    "vrsq.s  S033, S033\n"
	    "vscl.t  R100, R100, S033\n"

	    // lup = side cross forward
	    "vcrsp.t R101, R100, R102\n"
	    "vneg.t  R102, R102\n"

	    "vmidt.q M000\n"
	    "vneg.t  C230, C000\n"
	    "vmmul.q M300, M100, M200\n"
    : : "m" ( *eye ), "m" ( *center ), "m" ( *up ) );
}

void vfpu_perspective_m ( ScePspFMatrix4 *m, float fovy, float aspect, float near, float far ) {
	__asm__ volatile (
	    "vmzero.q M100\n"					// set M100 to all zeros
	    "mtv     %1, S000\n"				// S000 = fovy
	    "viim.s  S001, 90\n"				// S002 = 90.0f
	    "vrcp.s  S001, S001\n"				// S002 = 1/90
	    "vmul.s  S000, S000, S000[1/2]\n"	// S000 = fovy * 0.5 = fovy/2
	    "vmul.s  S000, S000, S001\n"		// S000 = (fovy/2)/90
	    "vrot.p  C002, S000, [c, s]\n"		// S002 = cos(angle), S003 = sin(angle)
	    "vdiv.s  S100, S002, S003\n"		// S100 = m->x.x = cotangent = cos(angle)/sin(angle)
	    "mtv     %3, S001\n"				// S001 = near
	    "mtv     %4, S002\n"				// S002 = far
	    "vsub.s  S003, S001, S002\n"		// S003 = deltaz = near-far
	    "vrcp.s  S003, S003\n"				// S003 = 1/deltaz
	    "mtv     %2, S000\n"				// S000 = aspect
	    "vmov.s  S111, S100\n"				// S111 = m->y.y = cotangent
	    "vdiv.s  S100, S100, S000\n"		// S100 = m->x.x = cotangent / aspect
	    "vadd.s  S122, S001, S002\n"        // S122 = m->z.z = far + near
	    "vmul.s  S122, S122, S003\n"		// S122 = m->z.z = (far+near)/deltaz
	    "vmul.s  S132, S001, S002\n"        // S132 = m->w.z = far * near
	    "vmul.s  S132, S132, S132[2]\n"     // S132 = m->w.z = 2 * (far*near)
	    "vmul.s  S132, S132, S003\n"        // S132 = m->w.z = 2 * (far*near) / deltaz
	    "vsub.s   S123, S123, S123[1]\n"	// S123 = m->z.w = -1.0
	    "sv.q	 C100, 0  + %0\n"
	    "sv.q	 C110, 16 + %0\n"
	    "sv.q	 C120, 32 + %0\n"
	    "sv.q	 C130, 48 + %0\n"
    : "=m" ( *m ) : "r" ( fovy ), "r" ( aspect ), "r" ( near ), "r" ( far ) );
}

void vfpu_ortho_m ( ScePspFMatrix4 *m, float left, float right, float bottom, float top, float near, float far ) {
	__asm__ volatile (
	    "vmidt.q M100\n"						// set M100 to identity
	    "mtv     %2, S000\n"					// C000 = [right, ?,      ?,  ]
	    "mtv     %4, S001\n"					// C000 = [right, top,    ?,  ]
	    "mtv     %6, S002\n"					// C000 = [right, top,    far ]
	    "mtv     %1, S010\n"					// C010 = [left,  ?,      ?,  ]
	    "mtv     %3, S011\n"					// C010 = [left,  bottom, ?,  ]
	    "mtv     %5, S012\n"                	// C010 = [left,  bottom, near]
	    "vsub.t  C020, C000, C010\n"			// C020 = [  dx,   dy,   dz]
	    "vrcp.t  C020, C020\n"              	// C020 = [1/dx, 1/dy, 1/dz]
	    "vmul.s  S100, S100[2], S020\n"     	// S100 = m->x.x = 2.0 / dx
	    "vmul.s  S111, S111[2], S021\n"     	// S110 = m->y.y = 2.0 / dy
	    "vmul.s  S122, S122[2], S022[-x]\n"		// S122 = m->z.z = -2.0 / dz
	    "vsub.t  C130, C000[-x,-y,-z], C010\n"	// C130 = m->w[x, y, z] = [-(right+left), -(top+bottom), -(far+near)]
	    // we do vsub here since -(a+b) => (-1*a) + (-1*b) => -a - b
	    "vmul.t  C130, C130, C020\n"			// C130 = [-(right+left)/dx, -(top+bottom)/dy, -(far+near)/dz]
	    "sv.q    C100, 0  + %0\n"
	    "sv.q    C110, 16 + %0\n"
	    "sv.q    C120, 32 + %0\n"
	    "sv.q    C130, 48 + %0\n"
    : "=m" ( *m ) : "r" ( left ), "r" ( right ), "r" ( bottom ), "r" ( top ), "r" ( near ), "r" ( far ) );
}
