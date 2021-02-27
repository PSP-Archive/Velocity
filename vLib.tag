<?xml version='1.0' encoding='ISO-8859-1' standalone='yes' ?>
<tagfile>
  <compound kind="group">
    <name>General</name>
    <title>General</title>
    <filename>a00042.html</filename>
    <member kind="function">
      <type>void</type>
      <name>start_vLib</name>
      <anchorfile>a00042_g6064c09498a38931b68b95fbfc7b1813.html</anchorfile>
      <anchor>g6064c09498a38931b68b95fbfc7b1813</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>stop_vLib</name>
      <anchorfile>a00042_g6a2f96268b56248a3e8def3bdc5577c3.html</anchorfile>
      <anchor>g6a2f96268b56248a3e8def3bdc5577c3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>start_drawing</name>
      <anchorfile>a00042_g926d371b3c8017535d9d153c741da2b3.html</anchorfile>
      <anchor>g926d371b3c8017535d9d153c741da2b3</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>end_drawing</name>
      <anchorfile>a00042_g2f00d326fc6339164a0dfdcfc30d894f.html</anchorfile>
      <anchor>g2f00d326fc6339164a0dfdcfc30d894f</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sync_frame</name>
      <anchorfile>a00042_g21a8ddecfae8322ceab6acf5ab946871.html</anchorfile>
      <anchor>g21a8ddecfae8322ceab6acf5ab946871</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>flip_screen</name>
      <anchorfile>a00042_g3cd20bc6cc65bafd7660a8d68af1e7ee.html</anchorfile>
      <anchor>g3cd20bc6cc65bafd7660a8d68af1e7ee</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>wait_to_vsync</name>
      <anchorfile>a00042_g07ec55b6170c8174ba953e21581dbeaa.html</anchorfile>
      <anchor>g07ec55b6170c8174ba953e21581dbeaa</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>clear_screen</name>
      <anchorfile>a00042_gf990b16f6bbedcbfee2de4901ac19418.html</anchorfile>
      <anchor>gf990b16f6bbedcbfee2de4901ac19418</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_clear_color</name>
      <anchorfile>a00042_gb97b1316c2f545298b646b36b333db6e.html</anchorfile>
      <anchor>gb97b1316c2f545298b646b36b333db6e</anchor>
      <arglist>(u32 color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>update_delta_time</name>
      <anchorfile>a00042_g6a0acdc915059ab4173858b6a43b3432.html</anchorfile>
      <anchor>g6a0acdc915059ab4173858b6a43b3432</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Shape</name>
    <title>Shape</title>
    <filename>a00043.html</filename>
    <member kind="function">
      <type>void</type>
      <name>draw_pixel</name>
      <anchorfile>a00043_gfd6b00c1813c334b5897a60892c86b40.html</anchorfile>
      <anchor>gfd6b00c1813c334b5897a60892c86b40</anchor>
      <arglist>(float x, float y, u32 color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_line</name>
      <anchorfile>a00043_ge834e9d3a7dae3ac80047d6818f0fbe6.html</anchorfile>
      <anchor>ge834e9d3a7dae3ac80047d6818f0fbe6</anchor>
      <arglist>(float startX, float startY, float endX, float endY, u32 color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_grad_line</name>
      <anchorfile>a00043_gef08b57e20335a3a17479dcc201d4757.html</anchorfile>
      <anchor>gef08b57e20335a3a17479dcc201d4757</anchor>
      <arglist>(float startX, float startY, float endX, float endY, u32 color1, u32 color2)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_rect</name>
      <anchorfile>a00043_g16a7262988a128b140cb86db1dd10456.html</anchorfile>
      <anchor>g16a7262988a128b140cb86db1dd10456</anchor>
      <arglist>(float x, float y, float width, float height, u32 color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_grad_rect</name>
      <anchorfile>a00043_g14a1ac09a6125c94b6b765d9d1cdca97.html</anchorfile>
      <anchor>g14a1ac09a6125c94b6b765d9d1cdca97</anchor>
      <arglist>(float x, float y, float width, float height, u32 color1, u32 color2, u32 color3, u32 color4)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_fill_rect</name>
      <anchorfile>a00043_gaf4bdfcd988799045f3da6ec08cc866c.html</anchorfile>
      <anchor>gaf4bdfcd988799045f3da6ec08cc866c</anchor>
      <arglist>(float x, float y, float width, float height, u32 color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_fill_grad_rect</name>
      <anchorfile>a00043_g4bdbbac10f523c234bf1040d832ac036.html</anchorfile>
      <anchor>g4bdbbac10f523c234bf1040d832ac036</anchor>
      <arglist>(float x, float y, float width, float height, u32 color1, u32 color2, u32 color3, u32 color4)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Image</name>
    <title>Image</title>
    <filename>a00044.html</filename>
    <member kind="function">
      <type>Image *</type>
      <name>load_image</name>
      <anchorfile>a00044_gd56c2371230a096261f39b0da4e7b5ef.html</anchorfile>
      <anchor>gd56c2371230a096261f39b0da4e7b5ef</anchor>
      <arglist>(const char *filename, int location)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unload_image</name>
      <anchorfile>a00044_gabd2ead8f3f86057db425d022aa1d581.html</anchorfile>
      <anchor>gabd2ead8f3f86057db425d022aa1d581</anchor>
      <arglist>(Image *img)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_image</name>
      <anchorfile>a00044_g0d59274c2da141d972ad73707c6004e8.html</anchorfile>
      <anchor>g0d59274c2da141d972ad73707c6004e8</anchor>
      <arglist>(Image *img)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_linear_filter</name>
      <anchorfile>a00044_g197281537137378d16f9557ffa99cdb8.html</anchorfile>
      <anchor>g197281537137378d16f9557ffa99cdb8</anchor>
      <arglist>(short state)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Model</name>
    <title>Model</title>
    <filename>a00045.html</filename>
    <member kind="function">
      <type>Model *</type>
      <name>load_model</name>
      <anchorfile>a00045_gfa6d44d4f4bfcaa6012961908686190d.html</anchorfile>
      <anchor>gfa6d44d4f4bfcaa6012961908686190d</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>unload_model</name>
      <anchorfile>a00045_g998243e6b6abf715ee83f60c5cad2e8d.html</anchorfile>
      <anchor>g998243e6b6abf715ee83f60c5cad2e8d</anchor>
      <arglist>(Model *mdl)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>draw_model</name>
      <anchorfile>a00045_g47ae61e59a8bd6eec273ce14a1b64e8e.html</anchorfile>
      <anchor>g47ae61e59a8bd6eec273ce14a1b64e8e</anchor>
      <arglist>(Model *mdl, Image *img)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>set_fog</name>
      <anchorfile>a00045_ga28d4d36e62ff73ed7b9fd4ff475c411.html</anchorfile>
      <anchor>ga28d4d36e62ff73ed7b9fd4ff475c411</anchor>
      <arglist>(float near, float far, unsigned int color)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>disable_fog</name>
      <anchorfile>a00045_g028ba16d42a87b452ad50af404380916.html</anchorfile>
      <anchor>g028ba16d42a87b452ad50af404380916</anchor>
      <arglist>(void)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Camera</name>
    <title>Camera</title>
    <filename>a00046.html</filename>
    <member kind="function">
      <type>void</type>
      <name>set_camera_3rd_person</name>
      <anchorfile>a00046_g8633b3bc7f0056a4b9fff8d148de97f0.html</anchorfile>
      <anchor>g8633b3bc7f0056a4b9fff8d148de97f0</anchor>
      <arglist>(float posX, float posY, float posZ, float rotX, float rotY, float zoom)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Audio</name>
    <title>Audio</title>
    <filename>a00047.html</filename>
    <member kind="function">
      <type>Audio *</type>
      <name>load_audio</name>
      <anchorfile>a00047_g3d5845fb2975a3b8be2b9761e505111c.html</anchorfile>
      <anchor>g3d5845fb2975a3b8be2b9761e505111c</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>play_audio</name>
      <anchorfile>a00047_gb6148949fc78eaa2cbfbe7572c8373cf.html</anchorfile>
      <anchor>gb6148949fc78eaa2cbfbe7572c8373cf</anchor>
      <arglist>(Audio *aud, int stream)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Font</name>
    <title>Font</title>
    <filename>a00048.html</filename>
    <member kind="function">
      <type>Font *</type>
      <name>load_font</name>
      <anchorfile>a00048_gc7be4f534bef5446a31844017fc0fbf2.html</anchorfile>
      <anchor>gc7be4f534bef5446a31844017fc0fbf2</anchor>
      <arglist>(const char *filename)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>print</name>
      <anchorfile>a00048_ga29e8ffd69fbbc1e5128f1c710cfac43.html</anchorfile>
      <anchor>ga29e8ffd69fbbc1e5128f1c710cfac43</anchor>
      <arglist>(Font *fnt, char *format)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Controller</name>
    <title>Controller</title>
    <filename>a00049.html</filename>
    <member kind="function">
      <type>CONTROLLER *</type>
      <name>read_input</name>
      <anchorfile>a00049_gca2108292bb464bf6a9a74515b4f0551.html</anchorfile>
      <anchor>gca2108292bb464bf6a9a74515b4f0551</anchor>
      <arglist>(int masked, int init, int interval)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>VFPU</name>
    <title>VFPU</title>
    <filename>a00050.html</filename>
    <member kind="function">
      <type>float</type>
      <name>vfpu_sinf</name>
      <anchorfile>a00050_g98b5e85b2602c234809abd601495ad7a.html</anchorfile>
      <anchor>g98b5e85b2602c234809abd601495ad7a</anchor>
      <arglist>(float rad)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>vfpu_cosf</name>
      <anchorfile>a00050_g917052af59a3fe5e34c82e4c2045a613.html</anchorfile>
      <anchor>g917052af59a3fe5e34c82e4c2045a613</anchor>
      <arglist>(float rad)</arglist>
    </member>
    <member kind="function">
      <type>float</type>
      <name>vfpu_sqrtf</name>
      <anchorfile>a00050_g05fff3fe576c3472c9a12226292fc85e.html</anchorfile>
      <anchor>g05fff3fe576c3472c9a12226292fc85e</anchor>
      <arglist>(float x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_identity_m</name>
      <anchorfile>a00050_g53f36986abb319a887797f77a222f72e.html</anchorfile>
      <anchor>g53f36986abb319a887797f77a222f72e</anchor>
      <arglist>(ScePspFMatrix4 *m)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_translate_m</name>
      <anchorfile>a00050_g362eb813d0d7755665991083cdb9d22c.html</anchorfile>
      <anchor>g362eb813d0d7755665991083cdb9d22c</anchor>
      <arglist>(ScePspFMatrix4 *m, float x, float y, float z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_rotateX_m</name>
      <anchorfile>a00050_gdc68b3eb3c9e868ba25d7d51387c80f0.html</anchorfile>
      <anchor>gdc68b3eb3c9e868ba25d7d51387c80f0</anchor>
      <arglist>(ScePspFMatrix4 *m, float x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_rotateY_m</name>
      <anchorfile>a00050_g3fe8fdfd4a314f7ad172e8855ce2e296.html</anchorfile>
      <anchor>g3fe8fdfd4a314f7ad172e8855ce2e296</anchor>
      <arglist>(ScePspFMatrix4 *m, float y)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_rotateZ_m</name>
      <anchorfile>a00050_gf5492cceaa56f0e3240485d5591c1b50.html</anchorfile>
      <anchor>gf5492cceaa56f0e3240485d5591c1b50</anchor>
      <arglist>(ScePspFMatrix4 *m, float z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_rotateXYZ_m</name>
      <anchorfile>a00050_g64a9db6b8c07b9cc08016c781838c8d2.html</anchorfile>
      <anchor>g64a9db6b8c07b9cc08016c781838c8d2</anchor>
      <arglist>(ScePspFMatrix4 *m, float x, float y, float z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_rotateZYX_m</name>
      <anchorfile>a00050_gecca1e99b9f6a37628245fa4c8d33d34.html</anchorfile>
      <anchor>gecca1e99b9f6a37628245fa4c8d33d34</anchor>
      <arglist>(ScePspFMatrix4 *m, float z, float y, float x)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_scale_m</name>
      <anchorfile>a00050_g10a8cf6d01eb700125e06e1de2bceec7.html</anchorfile>
      <anchor>g10a8cf6d01eb700125e06e1de2bceec7</anchor>
      <arglist>(ScePspFMatrix4 *m, float x, float y, float z)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_lookAt_m</name>
      <anchorfile>a00050_ge92424252167f41636cfa5efc0ee40fc.html</anchorfile>
      <anchor>ge92424252167f41636cfa5efc0ee40fc</anchor>
      <arglist>(ScePspFMatrix4 *m, ScePspFVector3 *eye, ScePspFVector3 *center, ScePspFVector3 *up)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_perspective_m</name>
      <anchorfile>a00050_g7a4a5ab98111fa343d3a8a7e423e3a17.html</anchorfile>
      <anchor>g7a4a5ab98111fa343d3a8a7e423e3a17</anchor>
      <arglist>(ScePspFMatrix4 *m, float fovy, float aspect, float near, float far)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>vfpu_ortho_m</name>
      <anchorfile>a00050_gbe5a68d4445dcbdd89885d3388da1cc7.html</anchorfile>
      <anchor>gbe5a68d4445dcbdd89885d3388da1cc7</anchor>
      <arglist>(ScePspFMatrix4 *m, float left, float right, float bottom, float top, float near, float far)</arglist>
    </member>
  </compound>
  <compound kind="group">
    <name>Debugging</name>
    <title>Debugging</title>
    <filename>a00051.html</filename>
    <member kind="function">
      <type>void</type>
      <name>fps</name>
      <anchorfile>a00051_gba647cb097913ed186a4197c5e53e1f4.html</anchorfile>
      <anchor>gba647cb097913ed186a4197c5e53e1f4</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>fpsX</name>
      <anchorfile>a00051_g8c0cf83a0b45b4a5a30cfb56262b91dc.html</anchorfile>
      <anchor>g8c0cf83a0b45b4a5a30cfb56262b91dc</anchor>
      <arglist>(const char *format,...)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sysmon</name>
      <anchorfile>a00051_gf9459cad5576ccba59940fb5ad518840.html</anchorfile>
      <anchor>gf9459cad5576ccba59940fb5ad518840</anchor>
      <arglist>(void)</arglist>
    </member>
    <member kind="function">
      <type>void</type>
      <name>sysmonX</name>
      <anchorfile>a00051_g620bed2a88eb3fe0b2eac8752f0c81f1.html</anchorfile>
      <anchor>g620bed2a88eb3fe0b2eac8752f0c81f1</anchor>
      <arglist>(const char *format,...)</arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Audio</name>
    <filename>a00018.html</filename>
  </compound>
  <compound kind="struct">
    <name>CONTROLLER</name>
    <filename>a00019.html</filename>
    <member kind="variable">
      <type>CONTROLLER::@0</type>
      <name>pressed</name>
      <anchorfile>a00019_7d2d64374aa03d5973cdad027c533dba.html</anchorfile>
      <anchor>7d2d64374aa03d5973cdad027c533dba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CONTROLLER::@0::@3</type>
      <name>@4</name>
      <anchorfile>a00067_a155b155d8af9dbea3bce5f9b0839e7c.html</anchorfile>
      <anchor>a155b155d8af9dbea3bce5f9b0839e7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>select</name>
      <anchorfile>a00068_7051cb35b8f8e629c7681bd6683eb64e.html</anchorfile>
      <anchor>7051cb35b8f8e629c7681bd6683eb64e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>start</name>
      <anchorfile>a00068_fd0e2e425e6c94dc5d411012102b8bc9.html</anchorfile>
      <anchor>fd0e2e425e6c94dc5d411012102b8bc9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>up</name>
      <anchorfile>a00068_2cdf330d3dd2afbcc855e3f1ee0ebb71.html</anchorfile>
      <anchor>2cdf330d3dd2afbcc855e3f1ee0ebb71</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>right</name>
      <anchorfile>a00068_cb354e2a89408baf1bd47959795bf252.html</anchorfile>
      <anchor>cb354e2a89408baf1bd47959795bf252</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>down</name>
      <anchorfile>a00068_6ebda2ae446028999d1232937fdbab4e.html</anchorfile>
      <anchor>6ebda2ae446028999d1232937fdbab4e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>left</name>
      <anchorfile>a00068_cf2a76f239fac1d6ac2d57c809171b4b.html</anchorfile>
      <anchor>cf2a76f239fac1d6ac2d57c809171b4b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>L</name>
      <anchorfile>a00068_26a3f750475e78867d268c3151470479.html</anchorfile>
      <anchor>26a3f750475e78867d268c3151470479</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>R</name>
      <anchorfile>a00068_5d1eab7d6143d4852a42de2ee74a68f8.html</anchorfile>
      <anchor>5d1eab7d6143d4852a42de2ee74a68f8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>triangle</name>
      <anchorfile>a00068_cb9d118e87e80bf11438ddba2e0f555e.html</anchorfile>
      <anchor>cb9d118e87e80bf11438ddba2e0f555e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>circle</name>
      <anchorfile>a00068_caece7dce9f0c693b79bcf3c2f9410e5.html</anchorfile>
      <anchor>caece7dce9f0c693b79bcf3c2f9410e5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>cross</name>
      <anchorfile>a00068_b968d571003b2e6f60b5e81af86fa298.html</anchorfile>
      <anchor>b968d571003b2e6f60b5e81af86fa298</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>square</name>
      <anchorfile>a00068_962e1bca9e7f92887274c594fe5f870e.html</anchorfile>
      <anchor>962e1bca9e7f92887274c594fe5f870e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>home</name>
      <anchorfile>a00068_2f160d12892496455aea1b3b0ca6e5ba.html</anchorfile>
      <anchor>2f160d12892496455aea1b3b0ca6e5ba</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>hold</name>
      <anchorfile>a00068_d1538fc90ff4c00f0478afd888322f71.html</anchorfile>
      <anchor>d1538fc90ff4c00f0478afd888322f71</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>wlanOn</name>
      <anchorfile>a00068_b9dec0131251ee59ba51f6034943907b.html</anchorfile>
      <anchor>b9dec0131251ee59ba51f6034943907b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>remote</name>
      <anchorfile>a00068_22a7fa2997f609f02900fca4fbd1b32f.html</anchorfile>
      <anchor>22a7fa2997f609f02900fca4fbd1b32f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>volUp</name>
      <anchorfile>a00068_641852b7e9c7a3767878b83ffa46ffbd.html</anchorfile>
      <anchor>641852b7e9c7a3767878b83ffa46ffbd</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>volDown</name>
      <anchorfile>a00068_14b419ca67ecf1108dfcfbd9c4347571.html</anchorfile>
      <anchor>14b419ca67ecf1108dfcfbd9c4347571</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>screen</name>
      <anchorfile>a00068_77e1fae5e6bd5be70b15ebb2dd0ae8aa.html</anchorfile>
      <anchor>77e1fae5e6bd5be70b15ebb2dd0ae8aa</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>note</name>
      <anchorfile>a00068_8c10ee1f9d9d4683af893d8cb640db04.html</anchorfile>
      <anchor>8c10ee1f9d9d4683af893d8cb640db04</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>disc</name>
      <anchorfile>a00068_0dc3a71a0c27f05f5039f308dda39481.html</anchorfile>
      <anchor>0dc3a71a0c27f05f5039f308dda39481</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>ms</name>
      <anchorfile>a00068_1496bbf75a8f77b6509775f132e7a71b.html</anchorfile>
      <anchor>1496bbf75a8f77b6509775f132e7a71b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>value</name>
      <anchorfile>a00067_486440963b09bcddb4a85f8ff9c9e00e.html</anchorfile>
      <anchor>486440963b09bcddb4a85f8ff9c9e00e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CONTROLLER::@1</type>
      <name>held</name>
      <anchorfile>a00019_9643ead953bce68c3b5e6278d7285f29.html</anchorfile>
      <anchor>9643ead953bce68c3b5e6278d7285f29</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CONTROLLER::@1::@5</type>
      <name>@6</name>
      <anchorfile>a00069_790d910bb7e45e689d95603b533e3eb3.html</anchorfile>
      <anchor>790d910bb7e45e689d95603b533e3eb3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>select</name>
      <anchorfile>a00070_fbba3f58998fdada14d3de84d6a92cff.html</anchorfile>
      <anchor>fbba3f58998fdada14d3de84d6a92cff</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>start</name>
      <anchorfile>a00070_197321562f9b8e9a0c9b8cd6f584046f.html</anchorfile>
      <anchor>197321562f9b8e9a0c9b8cd6f584046f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>up</name>
      <anchorfile>a00070_394e1081002c7ca716c3f7e138777479.html</anchorfile>
      <anchor>394e1081002c7ca716c3f7e138777479</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>right</name>
      <anchorfile>a00070_29ac5aaf3c8affd661483ea022ba4718.html</anchorfile>
      <anchor>29ac5aaf3c8affd661483ea022ba4718</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>down</name>
      <anchorfile>a00070_7d89c49e28d5ec7ce26228b05c19b1c7.html</anchorfile>
      <anchor>7d89c49e28d5ec7ce26228b05c19b1c7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>left</name>
      <anchorfile>a00070_3ec0dc8dd76882696112081cc6ed7f93.html</anchorfile>
      <anchor>3ec0dc8dd76882696112081cc6ed7f93</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>L</name>
      <anchorfile>a00070_ea9f0eb429285c7b5c9876acb6cff858.html</anchorfile>
      <anchor>ea9f0eb429285c7b5c9876acb6cff858</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>R</name>
      <anchorfile>a00070_50f89612483fed2ff4901afd211192b9.html</anchorfile>
      <anchor>50f89612483fed2ff4901afd211192b9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>triangle</name>
      <anchorfile>a00070_78e67ebdf259878e948b91b76afa499f.html</anchorfile>
      <anchor>78e67ebdf259878e948b91b76afa499f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>circle</name>
      <anchorfile>a00070_f218f1a35ef5cd82d797e1d35f019e0b.html</anchorfile>
      <anchor>f218f1a35ef5cd82d797e1d35f019e0b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>cross</name>
      <anchorfile>a00070_d4f6cded4f9af920223212170a659296.html</anchorfile>
      <anchor>d4f6cded4f9af920223212170a659296</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>square</name>
      <anchorfile>a00070_5ac646388964656ca3e4962187bd32e1.html</anchorfile>
      <anchor>5ac646388964656ca3e4962187bd32e1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>home</name>
      <anchorfile>a00070_4e6bc4f5c2aa8dbfebd2078ad993a11a.html</anchorfile>
      <anchor>4e6bc4f5c2aa8dbfebd2078ad993a11a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>hold</name>
      <anchorfile>a00070_92686c632401534d46f35ff61391f7b5.html</anchorfile>
      <anchor>92686c632401534d46f35ff61391f7b5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>wlanOn</name>
      <anchorfile>a00070_939a885eb04f503c918e482fb14712af.html</anchorfile>
      <anchor>939a885eb04f503c918e482fb14712af</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>remote</name>
      <anchorfile>a00070_ed588a0e844245b8b05af9e72f377387.html</anchorfile>
      <anchor>ed588a0e844245b8b05af9e72f377387</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>volUp</name>
      <anchorfile>a00070_f12a6071e50cac80766bb86d491b3b0a.html</anchorfile>
      <anchor>f12a6071e50cac80766bb86d491b3b0a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>volDown</name>
      <anchorfile>a00070_b1c0cca164ad4c58788d99020e2d3546.html</anchorfile>
      <anchor>b1c0cca164ad4c58788d99020e2d3546</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>screen</name>
      <anchorfile>a00070_37c815e2d5efd8f79ed05e797b79f630.html</anchorfile>
      <anchor>37c815e2d5efd8f79ed05e797b79f630</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>note</name>
      <anchorfile>a00070_967f08ae214e74a070827b51751d1555.html</anchorfile>
      <anchor>967f08ae214e74a070827b51751d1555</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>disc</name>
      <anchorfile>a00070_8a5d5a4c6dcb7e5b2d747e2457fcbddc.html</anchorfile>
      <anchor>8a5d5a4c6dcb7e5b2d747e2457fcbddc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>ms</name>
      <anchorfile>a00070_0c8c076390021fb79e65d6b0e8356ce9.html</anchorfile>
      <anchor>0c8c076390021fb79e65d6b0e8356ce9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>value</name>
      <anchorfile>a00069_2e4ada0356816a26cded6e1fc8716659.html</anchorfile>
      <anchor>2e4ada0356816a26cded6e1fc8716659</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CONTROLLER::@2</type>
      <name>released</name>
      <anchorfile>a00019_37dad0aa8f6e05173551308928d8b4c1.html</anchorfile>
      <anchor>37dad0aa8f6e05173551308928d8b4c1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>CONTROLLER::@2::@7</type>
      <name>@8</name>
      <anchorfile>a00071_70271635ff26e49081d0fc4d29cffad5.html</anchorfile>
      <anchor>70271635ff26e49081d0fc4d29cffad5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>select</name>
      <anchorfile>a00072_63e7836eb758968b911ae45897ce8c10.html</anchorfile>
      <anchor>63e7836eb758968b911ae45897ce8c10</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>start</name>
      <anchorfile>a00072_f856747652e36e1447c601c48a549d1d.html</anchorfile>
      <anchor>f856747652e36e1447c601c48a549d1d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>up</name>
      <anchorfile>a00072_aaf0f31accb2d84f4564d84b2d2150c3.html</anchorfile>
      <anchor>aaf0f31accb2d84f4564d84b2d2150c3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>right</name>
      <anchorfile>a00072_1880c500a6970ffdbed68f48d19da701.html</anchorfile>
      <anchor>1880c500a6970ffdbed68f48d19da701</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>down</name>
      <anchorfile>a00072_139217532eb648a7631d4c32f99903fc.html</anchorfile>
      <anchor>139217532eb648a7631d4c32f99903fc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>left</name>
      <anchorfile>a00072_444196b51afaf6909128e6d28572724e.html</anchorfile>
      <anchor>444196b51afaf6909128e6d28572724e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>L</name>
      <anchorfile>a00072_1e073d67ea1572541d601805ac151ac8.html</anchorfile>
      <anchor>1e073d67ea1572541d601805ac151ac8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>R</name>
      <anchorfile>a00072_96eff12d2d9c18882836464a04d0dec3.html</anchorfile>
      <anchor>96eff12d2d9c18882836464a04d0dec3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>triangle</name>
      <anchorfile>a00072_2d020dc3d6c83dbacc1b82652831fae6.html</anchorfile>
      <anchor>2d020dc3d6c83dbacc1b82652831fae6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>circle</name>
      <anchorfile>a00072_73a11468398fc3d5d3e2b28ef58dcf0e.html</anchorfile>
      <anchor>73a11468398fc3d5d3e2b28ef58dcf0e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>cross</name>
      <anchorfile>a00072_187561ff204bbcd836c9c4cec89b4e46.html</anchorfile>
      <anchor>187561ff204bbcd836c9c4cec89b4e46</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>square</name>
      <anchorfile>a00072_6c714a94551f69982e3f968191773739.html</anchorfile>
      <anchor>6c714a94551f69982e3f968191773739</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>home</name>
      <anchorfile>a00072_42673245d82a9270b12c1558bc1e0fe9.html</anchorfile>
      <anchor>42673245d82a9270b12c1558bc1e0fe9</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>hold</name>
      <anchorfile>a00072_845a0ad097a8f256f55e7160f2e970d8.html</anchorfile>
      <anchor>845a0ad097a8f256f55e7160f2e970d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>wlanOn</name>
      <anchorfile>a00072_97558ff58540bbe72538b312d2df588e.html</anchorfile>
      <anchor>97558ff58540bbe72538b312d2df588e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>remote</name>
      <anchorfile>a00072_c2639ac22666cc800a2c3d2b2e82c7d2.html</anchorfile>
      <anchor>c2639ac22666cc800a2c3d2b2e82c7d2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>volUp</name>
      <anchorfile>a00072_15f9d328c782ed191a9004447527b1cc.html</anchorfile>
      <anchor>15f9d328c782ed191a9004447527b1cc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>volDown</name>
      <anchorfile>a00072_ea214b227f62e958a4cd7542ec1f32cb.html</anchorfile>
      <anchor>ea214b227f62e958a4cd7542ec1f32cb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>screen</name>
      <anchorfile>a00072_258a1bbe6cc98ef83aa18dace3778766.html</anchorfile>
      <anchor>258a1bbe6cc98ef83aa18dace3778766</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>note</name>
      <anchorfile>a00072_7a53369574d105c2d8da0374b8612316.html</anchorfile>
      <anchor>7a53369574d105c2d8da0374b8612316</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>disc</name>
      <anchorfile>a00072_f0051023b0e957c7869d77b41e36f9ab.html</anchorfile>
      <anchor>f0051023b0e957c7869d77b41e36f9ab</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>ms</name>
      <anchorfile>a00072_197287b3ee7cf4c17955f87a173b74f2.html</anchorfile>
      <anchor>197287b3ee7cf4c17955f87a173b74f2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>value</name>
      <anchorfile>a00071_5ad81a9cbe1a1fe6ca1e3fd44cc8c6e3.html</anchorfile>
      <anchor>5ad81a9cbe1a1fe6ca1e3fd44cc8c6e3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>repeatMask</name>
      <anchorfile>a00019_949e33c00c7f3d4db1b5478623a7df3d.html</anchorfile>
      <anchor>949e33c00c7f3d4db1b5478623a7df3d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>repeatCounter</name>
      <anchorfile>a00019_6abe1b863f058761d711868f5e57052e.html</anchorfile>
      <anchor>6abe1b863f058761d711868f5e57052e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>repeatInit</name>
      <anchorfile>a00019_b5037b4c0ef5042e79594c39d4e4e3b3.html</anchorfile>
      <anchor>b5037b4c0ef5042e79594c39d4e4e3b3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>repeatInterval</name>
      <anchorfile>a00019_239cecbea4160d114127fddf595a7567.html</anchorfile>
      <anchor>239cecbea4160d114127fddf595a7567</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>analogX</name>
      <anchorfile>a00019_f2b6d3e428acb8c6b3be23f47d58ffcc.html</anchorfile>
      <anchor>f2b6d3e428acb8c6b3be23f47d58ffcc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>analogY</name>
      <anchorfile>a00019_4cb9d76680785e7701801a2342589c07.html</anchorfile>
      <anchor>4cb9d76680785e7701801a2342589c07</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>CP_Vertex_2D</name>
    <filename>a00020.html</filename>
    <member kind="variable">
      <type>u32</type>
      <name>color</name>
      <anchorfile>a00020_c78f4ae5cc94e0df47e52b92d4b0b38d.html</anchorfile>
      <anchor>c78f4ae5cc94e0df47e52b92d4b0b38d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>x</name>
      <anchorfile>a00020_1619b03d86a9c96801dfd0c9314a8d62.html</anchorfile>
      <anchor>1619b03d86a9c96801dfd0c9314a8d62</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>y</name>
      <anchorfile>a00020_16bc0995847f48eb5032b9a0b2cab0ad.html</anchorfile>
      <anchor>16bc0995847f48eb5032b9a0b2cab0ad</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>z</name>
      <anchorfile>a00020_bc36e5fd79335344ab9850ed4f24f7a4.html</anchorfile>
      <anchor>bc36e5fd79335344ab9850ed4f24f7a4</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>CP_Vertex_3D</name>
    <filename>a00021.html</filename>
    <member kind="variable">
      <type>u32</type>
      <name>color</name>
      <anchorfile>a00021_abd07cae8e93d07c829581bc9ce3a555.html</anchorfile>
      <anchor>abd07cae8e93d07c829581bc9ce3a555</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>x</name>
      <anchorfile>a00021_2547c0ffffa7160a6402a3d366552b58.html</anchorfile>
      <anchor>2547c0ffffa7160a6402a3d366552b58</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y</name>
      <anchorfile>a00021_fc30c8da3cb15ac07127da81debf6afb.html</anchorfile>
      <anchor>fc30c8da3cb15ac07127da81debf6afb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>z</name>
      <anchorfile>a00021_1d066f669d9f4ecb54f8c484c6935867.html</anchorfile>
      <anchor>1d066f669d9f4ecb54f8c484c6935867</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Font</name>
    <filename>a00022.html</filename>
  </compound>
  <compound kind="struct">
    <name>Image</name>
    <filename>a00023.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>x</name>
      <anchorfile>a00023_b5be3f17a7d1c8edf65cca973f2dc48f.html</anchorfile>
      <anchor>b5be3f17a7d1c8edf65cca973f2dc48f</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y</name>
      <anchorfile>a00023_1ff7add3500ec4d6e3efc08188a64a59.html</anchorfile>
      <anchor>1ff7add3500ec4d6e3efc08188a64a59</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>width</name>
      <anchorfile>a00023_27ec986c52261757ad7e8a027b7154be.html</anchorfile>
      <anchor>27ec986c52261757ad7e8a027b7154be</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>height</name>
      <anchorfile>a00023_d31f0d5dbf799da956b02123572e9920.html</anchorfile>
      <anchor>d31f0d5dbf799da956b02123572e9920</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>startX</name>
      <anchorfile>a00023_6830290a583187b4451c14bf21fd931e.html</anchorfile>
      <anchor>6830290a583187b4451c14bf21fd931e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>startY</name>
      <anchorfile>a00023_c0e0af4fbd650f7e4375113d20889ade.html</anchorfile>
      <anchor>c0e0af4fbd650f7e4375113d20889ade</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>endX</name>
      <anchorfile>a00023_341229237f7f8a6001e3132c89c10bb4.html</anchorfile>
      <anchor>341229237f7f8a6001e3132c89c10bb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>endY</name>
      <anchorfile>a00023_6b6186f137c1851ecd4939cccc0ec345.html</anchorfile>
      <anchor>6b6186f137c1851ecd4939cccc0ec345</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>angle</name>
      <anchorfile>a00023_c309847258f6a714ab9cd5d9fe39db11.html</anchorfile>
      <anchor>c309847258f6a714ab9cd5d9fe39db11</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>centerX</name>
      <anchorfile>a00023_2ddce309364cb64cfa2fa5f6540b2072.html</anchorfile>
      <anchor>2ddce309364cb64cfa2fa5f6540b2072</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>centerY</name>
      <anchorfile>a00023_53153de0cbd380c8ec93b0f143382869.html</anchorfile>
      <anchor>53153de0cbd380c8ec93b0f143382869</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>initWidth</name>
      <anchorfile>a00023_36f406959a34f391746e66bb8ee3e334.html</anchorfile>
      <anchor>36f406959a34f391746e66bb8ee3e334</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>initHeight</name>
      <anchorfile>a00023_872de85785e03050a81a5c01e0ddd4a0.html</anchorfile>
      <anchor>872de85785e03050a81a5c01e0ddd4a0</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>realWidth</name>
      <anchorfile>a00023_8c157177016cbc2d4ec7d2661c865cee.html</anchorfile>
      <anchor>8c157177016cbc2d4ec7d2661c865cee</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>realHeight</name>
      <anchorfile>a00023_a3f17ae35d35eea4bd5d5a723008e60b.html</anchorfile>
      <anchor>a3f17ae35d35eea4bd5d5a723008e60b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>totalSize</name>
      <anchorfile>a00023_d682bf1f61fc0ebb156a03a46d19a4c2.html</anchorfile>
      <anchor>d682bf1f61fc0ebb156a03a46d19a4c2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>location</name>
      <anchorfile>a00023_3c281e0a073be19d113bfe90b6d70a6a.html</anchorfile>
      <anchor>3c281e0a073be19d113bfe90b6d70a6a</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u32 *</type>
      <name>data</name>
      <anchorfile>a00023_50f3438dafa4842dfe63a01e560421b6.html</anchorfile>
      <anchor>50f3438dafa4842dfe63a01e560421b6</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>Model</name>
    <filename>a00024.html</filename>
    <member kind="function">
      <type>u32</type>
      <name>__attribute__</name>
      <anchorfile>a00024_5319797d8b3713b0b4891a35d0c415f6.html</anchorfile>
      <anchor>5319797d8b3713b0b4891a35d0c415f6</anchor>
      <arglist>((aligned(16)))*displayList</arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>posX</name>
      <anchorfile>a00024_82e10a09324771849fbfda31b1f176b1.html</anchorfile>
      <anchor>82e10a09324771849fbfda31b1f176b1</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>posY</name>
      <anchorfile>a00024_6c8ab776736de62e27cd13a3cc868c1b.html</anchorfile>
      <anchor>6c8ab776736de62e27cd13a3cc868c1b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>posZ</name>
      <anchorfile>a00024_b3fd6f53ace1309c68141e5f63ce1ad4.html</anchorfile>
      <anchor>b3fd6f53ace1309c68141e5f63ce1ad4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sizeX</name>
      <anchorfile>a00024_0d1e0d8b28391051aa80af7a8c403733.html</anchorfile>
      <anchor>0d1e0d8b28391051aa80af7a8c403733</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sizeY</name>
      <anchorfile>a00024_766eb8bb385f0de5c60e0cd7e1ec8362.html</anchorfile>
      <anchor>766eb8bb385f0de5c60e0cd7e1ec8362</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>sizeZ</name>
      <anchorfile>a00024_1167118caa0ff92a62dca594c88c6d2c.html</anchorfile>
      <anchor>1167118caa0ff92a62dca594c88c6d2c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rotX</name>
      <anchorfile>a00024_c2ae10b7a367b6eae7b2b7134c54551d.html</anchorfile>
      <anchor>c2ae10b7a367b6eae7b2b7134c54551d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rotY</name>
      <anchorfile>a00024_e4d3bd3e0231d2ae8703816b38049be3.html</anchorfile>
      <anchor>e4d3bd3e0231d2ae8703816b38049be3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>rotZ</name>
      <anchorfile>a00024_35b955928547bbce7bcbc7770441e047.html</anchorfile>
      <anchor>35b955928547bbce7bcbc7770441e047</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>int</type>
      <name>vertTotal</name>
      <anchorfile>a00024_0676c67aff5226afc0d12e637c5f2fdb.html</anchorfile>
      <anchor>0676c67aff5226afc0d12e637c5f2fdb</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>TP_Vertex_3D *</type>
      <name>verts</name>
      <anchorfile>a00024_631e06b40a30069bf3b93945a87df2bc.html</anchorfile>
      <anchor>631e06b40a30069bf3b93945a87df2bc</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>Image *</type>
      <name>img</name>
      <anchorfile>a00024_a5453367f9bd45d8ed5b438619460f0e.html</anchorfile>
      <anchor>a5453367f9bd45d8ed5b438619460f0e</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>NCP_Vertex_3D</name>
    <filename>a00025.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>nx</name>
      <anchorfile>a00025_220eee4a8d39de3ecbc91728e7d999f3.html</anchorfile>
      <anchor>220eee4a8d39de3ecbc91728e7d999f3</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>ny</name>
      <anchorfile>a00025_381204f1df9a9e29024649d6b32ce1f5.html</anchorfile>
      <anchor>381204f1df9a9e29024649d6b32ce1f5</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>nz</name>
      <anchorfile>a00025_fa27dacfc70f5003b84ac9b4a3554fb4.html</anchorfile>
      <anchor>fa27dacfc70f5003b84ac9b4a3554fb4</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>u32</type>
      <name>color</name>
      <anchorfile>a00025_648f0c7f7e020fef6bad176880b7f1df.html</anchorfile>
      <anchor>648f0c7f7e020fef6bad176880b7f1df</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>x</name>
      <anchorfile>a00025_603a6ec3ec002d7b915e91a689db4a65.html</anchorfile>
      <anchor>603a6ec3ec002d7b915e91a689db4a65</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y</name>
      <anchorfile>a00025_ab8e29fc93268b640693932411b9939e.html</anchorfile>
      <anchor>ab8e29fc93268b640693932411b9939e</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>z</name>
      <anchorfile>a00025_6409424fb64ac1f557e9fbde95177ff7.html</anchorfile>
      <anchor>6409424fb64ac1f557e9fbde95177ff7</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>NTP_Vertex_3D</name>
    <filename>a00026.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>nx</name>
      <anchorfile>a00026_d439aa4462f591f7d1868fa2cc00599d.html</anchorfile>
      <anchor>d439aa4462f591f7d1868fa2cc00599d</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>ny</name>
      <anchorfile>a00026_c5c4cf7d6f0667299d307a1e9acd9316.html</anchorfile>
      <anchor>c5c4cf7d6f0667299d307a1e9acd9316</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>nz</name>
      <anchorfile>a00026_458b04722d74248eaf0ebf88b53ae812.html</anchorfile>
      <anchor>458b04722d74248eaf0ebf88b53ae812</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>u</name>
      <anchorfile>a00026_e6fdbf857f5a6099d11658ce43ac0ba6.html</anchorfile>
      <anchor>e6fdbf857f5a6099d11658ce43ac0ba6</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>v</name>
      <anchorfile>a00026_0e070f5ac597b91d9b68128a72308ed2.html</anchorfile>
      <anchor>0e070f5ac597b91d9b68128a72308ed2</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>x</name>
      <anchorfile>a00026_38a657825c2109aea6b38859a194002b.html</anchorfile>
      <anchor>38a657825c2109aea6b38859a194002b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y</name>
      <anchorfile>a00026_3fd0e8412ea87a0580e26bd83e79a5d8.html</anchorfile>
      <anchor>3fd0e8412ea87a0580e26bd83e79a5d8</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>z</name>
      <anchorfile>a00026_6bf33e20d496b0da1d11d98786a15da1.html</anchorfile>
      <anchor>6bf33e20d496b0da1d11d98786a15da1</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>TP_Vertex_2D</name>
    <filename>a00027.html</filename>
    <member kind="variable">
      <type>short</type>
      <name>u</name>
      <anchorfile>a00027_b1c2b45e21c1ac2b9b581ae882f2a167.html</anchorfile>
      <anchor>b1c2b45e21c1ac2b9b581ae882f2a167</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>v</name>
      <anchorfile>a00027_14b989010f1c99363142971c0496629c.html</anchorfile>
      <anchor>14b989010f1c99363142971c0496629c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>x</name>
      <anchorfile>a00027_d66507d4a97f5d7c70b36da91f95f228.html</anchorfile>
      <anchor>d66507d4a97f5d7c70b36da91f95f228</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>y</name>
      <anchorfile>a00027_c9a61c45f30aa3b85632306413d7c7ed.html</anchorfile>
      <anchor>c9a61c45f30aa3b85632306413d7c7ed</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>short</type>
      <name>z</name>
      <anchorfile>a00027_2ef6206b4a216c69db0267187713e88f.html</anchorfile>
      <anchor>2ef6206b4a216c69db0267187713e88f</anchor>
      <arglist></arglist>
    </member>
  </compound>
  <compound kind="struct">
    <name>TP_Vertex_3D</name>
    <filename>a00028.html</filename>
    <member kind="variable">
      <type>float</type>
      <name>u</name>
      <anchorfile>a00028_0c524a7c2856bff828b3aea936032f25.html</anchorfile>
      <anchor>0c524a7c2856bff828b3aea936032f25</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>v</name>
      <anchorfile>a00028_e3e893e5718b694cf142b7015df23a7c.html</anchorfile>
      <anchor>e3e893e5718b694cf142b7015df23a7c</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>x</name>
      <anchorfile>a00028_dca6c12ffc57732d01a1a35fa9242ed7.html</anchorfile>
      <anchor>dca6c12ffc57732d01a1a35fa9242ed7</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>y</name>
      <anchorfile>a00028_90ecb69a541c0ac907a83493baf47e2b.html</anchorfile>
      <anchor>90ecb69a541c0ac907a83493baf47e2b</anchor>
      <arglist></arglist>
    </member>
    <member kind="variable">
      <type>float</type>
      <name>z</name>
      <anchorfile>a00028_37042313a6276ecb150c747a4df5fb79.html</anchorfile>
      <anchor>37042313a6276ecb150c747a4df5fb79</anchor>
      <arglist></arglist>
    </member>
  </compound>
</tagfile>
