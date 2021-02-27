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
// Model                                                                           //
//---------------------------------------------------------------------------------//

static float __attribute__ ( ( aligned ( 16 ) ) ) bbox[8][3] =
        {
                {
                        -1.0f, -1.0f, -1.0f
                },
                { -1.0f, -1.0f,  1.0f },
                { -1.0f,  1.0f, -1.0f },
                { -1.0f,  1.0f,  1.0f },
                {  1.0f, -1.0f, -1.0f },
                {  1.0f, -1.0f,  1.0f },
                {  1.0f,  1.0f, -1.0f },
                {  1.0f,  1.0f,  1.0f }
        };

static void ReadStr ( FILE *f, char *string )
{
        do {
                fgets ( string, 255, f );
        } while ( ( string[0] == '/' ) || ( string[0] == '\n' ) );
}

static void compute_normals ( Model *mdl )
{}

static void load_obj ( const char *filename, Model *mdl )
{
        FILE *fp;
        if ( ( fp = fopen ( filename, "rb" ) ) == NULL )
                return;
        fclose ( fp );
}

Model *load_model ( const char *filename )
{
        Model *mdl = ( Model* ) malloc ( sizeof ( Model ) );
        const char *suffix = strrchr ( filename, '.' );

        //if ( strcmp ( suffix, ".3ds" ) == 0 ) {}
        if ( strcmp ( suffix, ".obj" ) == 0 )
                load_obj ( filename, mdl );
        //else if ( strcmp ( suffix, ".md2" ) == 0 )
        //else if ( strcmp ( suffix, ".blend" ) == 0 ) {}
        //else if ( strcmp ( suffix, ".maya" ) == 0 ) {}
        /*else { // This is our .mdl file. It's only temp until I can get some of the larger, more complex files finished
                float x, y, z, u, v;
                int numOfVertices = 0;
                char oneLine[255];
                // Read one line
                ReadStr ( fp, oneLine );
                // Find the number of triangles
                sscanf ( oneLine, "verts %i\n", &mdl->vertTotal );

                // Allocate memory for the vertices
                mdl->verts = ( TP_Vertex_3D* ) malloc ( mdl->vertTotal * sizeof ( TP_Vertex_3D ) ); //  + 0x40000000;

                // Load the geometry line by line
                int loop;
                for ( loop = 0; loop < mdl->vertTotal / 3; loop++ ) {
                        int vert;
                        for ( vert = 0; vert < 3; vert++ ) {
                                ReadStr ( fp, oneLine );
                                sscanf ( oneLine, "%f %f %f %f %f", &x, &y, &z, &u, &v );
                                mdl->verts[numOfVertices].x = x;
                                mdl->verts[numOfVertices].y = y;
                                mdl->verts[numOfVertices].z = z;
                                mdl->verts[numOfVertices].u = u;
                                mdl->verts[numOfVertices].v = v;
                                numOfVertices++;
                        }
                }
        }*/

        sceKernelDcacheWritebackAll();

        /*sceGuStart(GU_CALL, t_displayList);

        sceGuBeginObject(GU_TEXTURE_32BITF|GU_VERTEX_32BITF|GU_TRANSFORM_3D, mdl->vertTotal, 0, mdl->verts);
        sceGuDrawArray(GU_TRIANGLES, GU_TEXTURE_32BITF|GU_VERTEX_32BITF|GU_TRANSFORM_3D, mdl->vertTotal, 0, mdl->verts);
        sceGuEndObject();

        sceGuFinish();
        sceGuSync(0,0);*/

        compute_normals ( mdl );

        mdl->posX = mdl->posY = mdl->posZ = 0.0f;
        mdl->sizeX = mdl->sizeY = mdl->sizeZ = 1.0f;
        mdl->rotX = mdl->rotY = mdl->rotZ = 0.0f;

        return mdl;
}

void unload_model ( Model *mdl )
{
        free ( mdl->displayList );
        free ( mdl->verts );
        free ( mdl );
}

void draw_model ( Model *mdl, Image *img )
{
        // Reset matrices
        vfpu_identity_m ( &m_projection_model );

        // Modify the matrices
        vfpu_translate_m ( &m_projection_model, mdl->posX, mdl->posY, mdl->posZ );
        vfpu_rotateXYZ_m ( &m_projection_model, mdl->rotX, mdl->rotY, mdl->rotZ );
        vfpu_scale_m ( &m_projection_model, mdl->sizeX, mdl->sizeY, mdl->sizeZ );

        // Set the new matrices for use
        sceGuSetMatrix ( GU_PROJECTION, &m_projection );
        sceGuSetMatrix ( GU_VIEW, &m_projection_view );
        sceGuSetMatrix ( GU_MODEL, &m_projection_model );

        sceGuTexImage ( 0, img->realWidth, img->realHeight, img->realWidth, ( void* ) img->data );

        sceGuBeginObject ( GU_VERTEX_32BITF, 8, 0, bbox );
        sceGuDrawArray ( GU_TRIANGLES, GU_TEXTURE_32BITF | GU_VERTEX_32BITF | GU_TRANSFORM_3D, mdl->vertTotal, 0, mdl->verts );
        sceGuEndObject();

        //sceGuCallList(mdl->displayList);
}

void set_fog ( float near, float far, unsigned int color )
{
        if ( drawingStarted ) {
                sceGuEnable ( GU_FOG );
                sceGuFog ( near, far, color );
                return;
        }

        sceGuStart ( GU_DIRECT, DList );
        sceGuEnable ( GU_FOG );
        sceGuFog ( near, far, color );
        sceGuFinish();
        sceGuSync ( 0, 0 );

}

void disable_fog ( void )
{
        if ( drawingStarted ) {
                sceGuDisable ( GU_FOG );
                return;
        }

        sceGuStart ( GU_DIRECT, DList );
        sceGuDisable ( GU_FOG );
        sceGuFinish();
        sceGuSync ( 0, 0 );
}

//---------------------------------------------------------------------------------//
// Camera                                                                          //
//---------------------------------------------------------------------------------//

void set_camera_3rd_person ( float posX, float posY, float posZ, float rotX, float rotY, float zoom )
{
        // Reset
        vfpu_identity_m ( &m_projection_view );
        vfpu_identity_m ( &m_projection_model );

        // Setup
        ScePspFVector3 eye = ( ScePspFVector3 ) {
                                     posX - ( zoom * vfpu_sinf ( rotY ) * vfpu_cosf ( rotX ) ),
                                     posY + ( zoom * vfpu_sinf ( rotX ) ),
                                     posZ + ( zoom * vfpu_cosf ( rotY ) * vfpu_cosf ( rotX ) )
                             };

        ScePspFVector3 center = ( ScePspFVector3 ) {
                                        posX, posY, posZ
                                };
        ScePspFVector3 up = ( ScePspFVector3 ) {
                                    0.0f, 1.0f, 0.0f
                            };

        // Set
        vfpu_lookAt_m ( &m_projection_view, &eye, &center, &up );
}
