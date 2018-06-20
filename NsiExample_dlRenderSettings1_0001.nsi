# 3Delight 13.3.13 darwin-x86_64 (May  9 2018, 3e6b5a) "Lucky Strike"
# Written Wed Jun 20 21:35:35 2018
SetAttribute ".global" 
  "statistics.notes" "string" 1 "/Users/Bo/Documents/maya/projects/default/assets/NsiExample.ma  |  dlRenderSettings1  |  Frame 0001" 
Create "3delight_matte" "attributes" 
SetAttribute "3delight_matte" 
  "matte" "int" 1 1 
Create "3delight_invisibleToCameraRays" "attributes" 
SetAttribute "3delight_invisibleToCameraRays" 
  "visibility.camera" "int" 1 0 
Create "3delight_invisibleToShadowRays" "attributes" 
SetAttribute "3delight_invisibleToShadowRays" 
  "visibility.shadow" "int" 1 0 
Create "3delight_invisibleToDiffuseRays" "attributes" 
SetAttribute "3delight_invisibleToDiffuseRays" 
  "visibility.diffuse" "int" 1 0 
Create "3delight_invisibleToReflectionRays" "attributes" 
SetAttribute "3delight_invisibleToReflectionRays" 
  "visibility.reflection" "int" 1 0 
Create "3delight_invisibleToRefractionRays" "attributes" 
SetAttribute "3delight_invisibleToRefractionRays" 
  "visibility.refraction" "int" 1 0 
Create "*uvCoord" "shader" 
SetAttribute "*uvCoord" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/uvCoord" 
Create "8F67B7B2-784C-26BF-6F61-53A450B9EE6E" "transform" 
Connect "8F67B7B2-784C-26BF-6F61-53A450B9EE6E" "" ".root" "objects" 
Create "61E48BA2-1F40-F6C0-9679-5F9DE167B15B" "perspectivecamera" 
Connect "61E48BA2-1F40-F6C0-9679-5F9DE167B15B" "" "8F67B7B2-784C-26BF-6F61-53A450B9EE6E" "objects" 
Create "4A59FAD9-4B45-D1B2-535B-2E8A9E4F41D7" "transform" 
Connect "4A59FAD9-4B45-D1B2-535B-2E8A9E4F41D7" "" ".root" "objects" 
Create "4F1E9024-474E-8567-BEB1-879BB86A3B45" "orthographiccamera" 
Connect "4F1E9024-474E-8567-BEB1-879BB86A3B45" "" "4A59FAD9-4B45-D1B2-535B-2E8A9E4F41D7" "objects" 
Create "E0C4F6CA-EE49-C6BD-F59B-8D8461DDEBAE" "transform" 
Connect "E0C4F6CA-EE49-C6BD-F59B-8D8461DDEBAE" "" ".root" "objects" 
Create "324952A5-EC43-06E4-32CF-51A6F93EC04A" "orthographiccamera" 
Connect "324952A5-EC43-06E4-32CF-51A6F93EC04A" "" "E0C4F6CA-EE49-C6BD-F59B-8D8461DDEBAE" "objects" 
Create "9DE036EA-7D43-1505-DBD6-FF87F5A96790" "transform" 
Connect "9DE036EA-7D43-1505-DBD6-FF87F5A96790" "" ".root" "objects" 
Create "6B2B0D39-C942-6647-DE94-39A54C56B1C0" "orthographiccamera" 
Connect "6B2B0D39-C942-6647-DE94-39A54C56B1C0" "" "9DE036EA-7D43-1505-DBD6-FF87F5A96790" "objects" 
Create "D99CAF67-C147-6354-6963-B4AA3A663A05" "transform" 
Connect "D99CAF67-C147-6354-6963-B4AA3A663A05" "" ".root" "objects" 
Create "D6F5DD94-F64D-B646-CC8A-278F16D78E86" "mesh" 
Connect "D6F5DD94-F64D-B646-CC8A-278F16D78E86" "" "D99CAF67-C147-6354-6963-B4AA3A663A05" "objects" 
Create "68E09035-6A4B-B96E-D944-DBBFC52F32E3" "transform" 
Connect "68E09035-6A4B-B96E-D944-DBBFC52F32E3" "" ".root" "objects" 
Create "EB9C1097-5D4B-8B9E-9F9B-CDA1AC5ACD8B" "mesh" 
Connect "EB9C1097-5D4B-8B9E-9F9B-CDA1AC5ACD8B" "" "68E09035-6A4B-B96E-D944-DBBFC52F32E3" "objects" 
Create "7C585BD0-4744-533A-2C39-AEA3BCA3AECF" "transform" 
Connect "7C585BD0-4744-533A-2C39-AEA3BCA3AECF" "" ".root" "objects" 
Create "27AB3D84-124C-DDFC-92A3-009B1DBE2500|shader" "shader" 
Create "27AB3D84-124C-DDFC-92A3-009B1DBE2500" "transform" 
Create "27AB3D84-124C-DDFC-92A3-009B1DBE2500|defaultMesh" "particles" 
SetAttribute "27AB3D84-124C-DDFC-92A3-009B1DBE2500|defaultMesh" 
  "P" "point" 1 [ 0 0 0 ] 
  "width" "float" 1 0.001 
Create "27AB3D84-124C-DDFC-92A3-009B1DBE2500|attributes" "attributes" 
Connect "27AB3D84-124C-DDFC-92A3-009B1DBE2500" "" "7C585BD0-4744-533A-2C39-AEA3BCA3AECF" "objects" 
Create "ED8C1882-394D-D714-7DC9-428217F2360D|shader" "shader" 
Create "13428382-FA4A-4376-B5F9-15AFFFD384CE|shader" "shader" 
Create "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39" "attributes" 
Create "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39|surface" "shader" 
Create "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39|displacement" "shader" 
Create "41BFD30D-C84D-182D-BAC1-5B867819A05E" "attributes" 
Create "41BFD30D-C84D-182D-BAC1-5B867819A05E|surface" "shader" 
Create "41BFD30D-C84D-182D-BAC1-5B867819A05E|displacement" "shader" 
Create "717C5DFD-724E-F253-D007-3A8AF3F3BD3A" "attributes" 
Create "DACE8793-DD44-6FA1-8C8D-3DA0E3DC7927" "set" 
Create "5E9EB6A2-DC43-FB92-7DFA-FE832F8CE008" "transform" 
SetAttribute "4F1E9024-474E-8567-BEB1-879BB86A3B45" 
  "clippingrange" "double" 2 [ 0.10000000000000001 10000 ] 
  "shutterrange" "double" 2 [ -0.20000000000000001 0.20000000000000001 ] 
SetAttribute "27AB3D84-124C-DDFC-92A3-009B1DBE2500|shader" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/pointLight" 
  "i_color" "color" 1 [ 1 1 1 ] 
  "intensity" "float" 1 1 
  "decayRate" "int" 1 0 
  "diffuse_contribution" "float" 1 1 
  "specular_contribution" "float" 1 1 
  "hair_contribution" "float" 1 1 
  "volume_contribution" "float" 1 1 
  "exposure" "float" 1 0 
SetAttribute "27AB3D84-124C-DDFC-92A3-009B1DBE2500|attributes" 
  "visibility.camera" "int" 1 0 
  "visibility.camera.priority" "int" 1 10 
SetAttribute "27AB3D84-124C-DDFC-92A3-009B1DBE2500|defaultMesh" 
  "width" "float" 1 0.001 
SetAttribute "27AB3D84-124C-DDFC-92A3-009B1DBE2500|attributes" 
  "visibility" "int" 1 0 
  "visibility.priority" "int" 1 1 
SetAttribute "6B2B0D39-C942-6647-DE94-39A54C56B1C0" 
  "clippingrange" "double" 2 [ 0.10000000000000001 10000 ] 
  "shutterrange" "double" 2 [ -0.20000000000000001 0.20000000000000001 ] 
SetAttribute "324952A5-EC43-06E4-32CF-51A6F93EC04A" 
  "clippingrange" "double" 2 [ 0.10000000000000001 10000 ] 
  "shutterrange" "double" 2 [ -0.20000000000000001 0.20000000000000001 ] 
SetAttribute "61E48BA2-1F40-F6C0-9679-5F9DE167B15B" 
  "depthoffield.enable" "int" 1 0 
  "depthoffield.fstop" "double" 1 5.5999999999999996 
  "depthoffield.focallength" "double" 1 3.4999999999999987 
  "depthoffield.focaldistance" "double" 1 5 
  "depthoffield.aperture.enable" "int" 1 0 
  "depthoffield.aperture.sides" "int" 1 5 
  "depthoffield.aperture.angle" "double" 1 0 
  "clippingrange" "double" 2 [ 0.10000000000000001 10000 ] 
  "shutterrange" "double" 2 [ -0.20000000000000001 0.20000000000000001 ] 
  "fov" "float" 1 54.432225 
SetAttribute "EB9C1097-5D4B-8B9E-9F9B-CDA1AC5ACD8B" 
  "nvertices" "int" 6 [ 4 4 4 4 4 4 ] 
  "P.indices" "int" 24 [ 0 1 3 2 2 3 5 4 4 5 7 6 6 7 1 0 1 7 
    5 3 6 0 2 4 ] 
  "N.indices" "int" 24 [ 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 
    18 19 20 21 22 23 ] 
  "st" "i float[2]" 15 [ 0.375 0 0.625 0 0.375 0.25 0.625 0.25 0.375 0.5 0.625 0.5 
    0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0 0.875 0.25 
    0.125 0 0.125 0.25 1e10 1e10 ] 
  "st.indices" "int" 24 [ 0 1 3 2 2 3 5 4 4 5 7 6 6 7 9 8 1 10 
    11 3 12 0 2 13 ] 
SetAttribute "D6F5DD94-F64D-B646-CC8A-278F16D78E86" 
  "nvertices" "int" 1 4 
  "P.indices" "int" 4 [ 0 1 3 2 ] 
  "N.indices" "int" 4 [ 0 1 2 3 ] 
  "st" "i float[2]" 5 [ 0 0 1 0 0 1 1 1 1e10 1e10 ] 
  "st.indices" "int" 4 [ 0 1 3 2 ] 
SetAttribute "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39|surface" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/shadingEngine_surface" 
SetAttribute "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39|displacement" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/shadingEngine_displacement" 
SetAttribute "41BFD30D-C84D-182D-BAC1-5B867819A05E|surface" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/shadingEngine_surface" 
SetAttribute "41BFD30D-C84D-182D-BAC1-5B867819A05E|displacement" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/shadingEngine_displacement" 
SetAttribute "717C5DFD-724E-F253-D007-3A8AF3F3BD3A" 
  "visibility" "int" 1 1 
  "visibility.priority" "int" 1 2 
SetAttribute "ED8C1882-394D-D714-7DC9-428217F2360D|shader" 
  "shaderfilename" "string" 1 "/Applications/3Delight/maya/osl/lambert" 
  "refractiveIndex" "float" 1 1 
  "refractions" "int" 1 0 
  "i_diffuse" "float" 1 0.8 
  "i_color" "color" 1 [ 0.5 0.5 0.5 ] 
  "transparency" "color" 1 [ 0 0 0 ] 
  "incandescence" "color" 1 [ 0 0 0 ] 
Connect "27AB3D84-124C-DDFC-92A3-009B1DBE2500|attributes" "" "27AB3D84-124C-DDFC-92A3-009B1DBE2500" "geometryattributes" 
Connect "27AB3D84-124C-DDFC-92A3-009B1DBE2500|shader" "" "27AB3D84-124C-DDFC-92A3-009B1DBE2500|attributes" "surfaceshader" 
  "priority" "int" 1 1 
Connect "27AB3D84-124C-DDFC-92A3-009B1DBE2500|defaultMesh" "" "27AB3D84-124C-DDFC-92A3-009B1DBE2500" "objects" 
SetAttribute "EB9C1097-5D4B-8B9E-9F9B-CDA1AC5ACD8B" 
  "P" "i point" 8 [ -0.5 -5 0.5 0.5 -5 0.5 -0.5 5 0.5 0.5 5 0.5 
    -0.5 5 -0.5 0.5 5 -0.5 -0.5 -5 -0.5 0.5 -5 -0.5 ] 
  "N" "i normal" 24 [ 0 0 0.99999995 0 0 0.99999995 0 0 0.99999995 0 0 0.99999995 
    0 1 0 0 1 0 0 1 0 0 1 0 
    0 0 -0.99999995 0 0 -0.99999995 0 0 -0.99999995 0 0 -0.99999995 
    0 -1 0 0 -1 0 0 -1 0 0 -1 0 
    0.99999995 0 0 0.99999995 0 0 0.99999995 0 0 0.99999995 0 0 
    -0.99999995 0 0 -0.99999995 0 0 -0.99999995 0 0 -0.99999995 0 0 ] 
SetAttribute "D6F5DD94-F64D-B646-CC8A-278F16D78E86" 
  "P" "i point" 4 [ -50 -1.110223e-14 50 50 -1.110223e-14 50 -50 1.110223e-14 -50 50 1.110223e-14 -50 ] 
  "N" "i normal" 4 [ 0 1 2.220446e-16 0 1 2.220446e-16 0 1 2.220446e-16 0 1 2.220446e-16 ] 
Connect "ED8C1882-394D-D714-7DC9-428217F2360D|shader" "outColor" "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39|surface" "i_surface" 
Connect "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39|surface" "" "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39" "surfaceshader" 
Connect "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39" "" "D6F5DD94-F64D-B646-CC8A-278F16D78E86" "geometryattributes" 
Connect "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39" "" "EB9C1097-5D4B-8B9E-9F9B-CDA1AC5ACD8B" "geometryattributes" 
Connect "ED8C1882-394D-D714-7DC9-428217F2360D|shader" "outColor" "41BFD30D-C84D-182D-BAC1-5B867819A05E|surface" "i_surface" 
Connect "41BFD30D-C84D-182D-BAC1-5B867819A05E|surface" "" "41BFD30D-C84D-182D-BAC1-5B867819A05E" "surfaceshader" 
Connect "13428382-FA4A-4376-B5F9-15AFFFD384CE|shader" "" "41BFD30D-C84D-182D-BAC1-5B867819A05E" "volumeshader" 
Connect "717C5DFD-724E-F253-D007-3A8AF3F3BD3A" "" "7C585BD0-4744-533A-2C39-AEA3BCA3AECF" "geometryattributes" 
Connect "9128CFA8-A44C-8774-D4A9-AAB0FCAADC39" "" "717C5DFD-724E-F253-D007-3A8AF3F3BD3A" "visibility" 
  "value" "int" 1 1 
  "priority" "int" 1 2 
Connect "41BFD30D-C84D-182D-BAC1-5B867819A05E" "" "717C5DFD-724E-F253-D007-3A8AF3F3BD3A" "visibility" 
  "value" "int" 1 1 
  "priority" "int" 1 2 
SetAttributeAtTime "68E09035-6A4B-B96E-D944-DBBFC52F32E3" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 5 5 -5 1 ] 
SetAttributeAtTime "E0C4F6CA-EE49-C6BD-F59B-8D8461DDEBAE" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1000.1 1 ] 
SetAttributeAtTime "4A59FAD9-4B45-D1B2-535B-2E8A9E4F41D7" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 -0 0 -0 2.2204460492503131e-16 -1.0000000000000002 0 0 1.0000000000000002 2.2204460492503131e-16 0 0 1000.1 0 1 ] 
SetAttributeAtTime "7C585BD0-4744-533A-2C39-AEA3BCA3AECF" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 -10 50 0 1 ] 
SetAttributeAtTime "9DE036EA-7D43-1505-DBD6-FF87F5A96790" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 2.2204460492503131e-16 0 -1.0000000000000002 0 0 1 0 0 1.0000000000000002 0 2.2204460492503131e-16 0 1000.1 0 0 1 ] 
SetAttributeAtTime "8F67B7B2-784C-26BF-6F61-53A450B9EE6E" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 0.93358042649719764 1.3877787807814457e-17 -0.35836794954531109 0 -0.1874512327642639 0.85229022253306053 -0.48832715663753939 0 0.3054334994666898 0.52306918908930788 0.79568146945180607 0 18.881641061705942 34.423595099383853 48.612789621738415 1 ] 
SetAttributeAtTime "D99CAF67-C147-6354-6963-B4AA3A663A05" -0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ] 
SetAttributeAtTime "68E09035-6A4B-B96E-D944-DBBFC52F32E3" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 5 5 -5 1 ] 
SetAttributeAtTime "E0C4F6CA-EE49-C6BD-F59B-8D8461DDEBAE" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 0 0 1000.1 1 ] 
SetAttributeAtTime "4A59FAD9-4B45-D1B2-535B-2E8A9E4F41D7" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 -0 0 -0 2.2204460492503131e-16 -1.0000000000000002 0 0 1.0000000000000002 2.2204460492503131e-16 0 0 1000.1 0 1 ] 
SetAttributeAtTime "7C585BD0-4744-533A-2C39-AEA3BCA3AECF" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 -10 50 0 1 ] 
SetAttributeAtTime "9DE036EA-7D43-1505-DBD6-FF87F5A96790" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 2.2204460492503131e-16 0 -1.0000000000000002 0 0 1 0 0 1.0000000000000002 0 2.2204460492503131e-16 0 1000.1 0 0 1 ] 
SetAttributeAtTime "8F67B7B2-784C-26BF-6F61-53A450B9EE6E" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 0.93358042649719764 1.3877787807814457e-17 -0.35836794954531109 0 -0.1874512327642639 0.85229022253306053 -0.48832715663753939 0 0.3054334994666898 0.52306918908930788 0.79568146945180607 0 18.881641061705942 34.423595099383853 48.612789621738415 1 ] 
SetAttributeAtTime "D99CAF67-C147-6354-6963-B4AA3A663A05" 0.2 
  "transformationmatrix" "doublematrix" 1 [ 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 ] 
Create "61E48BA2-1F40-F6C0-9679-5F9DE167B15B|screen" "screen" 
Connect "61E48BA2-1F40-F6C0-9679-5F9DE167B15B|screen" "" "61E48BA2-1F40-F6C0-9679-5F9DE167B15B" "screens" 
SetAttribute "61E48BA2-1F40-F6C0-9679-5F9DE167B15B|screen" 
  "resolution" "int[2]" 1 [ 960 540 ] 
  "crop" "float[2]" 2 [ 0 0 1 1 ] 
  "oversampling" "int" 1 8 
  "pixelaspectratio" "float" 1 1 
  "screenwindow" "double[2]" 2 [ -1 -0.5625 1 0.5625 ] 
Create "driver1" "outputdriver" 
SetAttribute "driver1" 
  "drivername" "string" 1 "idisplay" 
  "imagefilename" "string" 1 "3delight/NsiExample/image/NsiExample_dlRenderSettings1_0001.idisplay" 
Create "0-rgba--perspShape-fb-half" "outputlayer" 
SetAttribute "0-rgba--perspShape-fb-half" 
  "variablename" "string" 1 "Ci" 
  "layertype" "string" 1 "color" 
  "scalarformat" "string" 1 "half" 
  "withalpha" "int" 1 1 
  "filter" "string" 1 "blackman-harris" 
  "filterwidth" "double" 1 2 
  "sortkey" "int" 1 0 
Connect "0-rgba--perspShape-fb-half" "" "61E48BA2-1F40-F6C0-9679-5F9DE167B15B|screen" "outputlayers" 
Connect "driver1" "" "0-rgba--perspShape-fb-half" "outputdrivers" 
SetAttribute "0-rgba--perspShape-fb-half" 
  "maximumvalue" "double" 1 50 
Create "driver2" "outputdriver" 
SetAttribute "driver2" 
  "drivername" "string" 1 "exr" 
  "imagefilename" "string" 1 "/Users/Bo/Documents/maya/projects/default/3delight/NsiExample/image/NsiExample_dlRenderSettings1_0001.exr" 
Create "0-rgba--perspShape-file-half" "outputlayer" 
SetAttribute "0-rgba--perspShape-file-half" 
  "variablename" "string" 1 "Ci" 
  "layertype" "string" 1 "color" 
  "scalarformat" "string" 1 "half" 
  "withalpha" "int" 1 1 
  "filter" "string" 1 "blackman-harris" 
  "filterwidth" "double" 1 2 
  "sortkey" "int" 1 1 
Connect "0-rgba--perspShape-file-half" "" "61E48BA2-1F40-F6C0-9679-5F9DE167B15B|screen" "outputlayers" 
Connect "driver2" "" "0-rgba--perspShape-file-half" "outputdrivers" 
SetAttribute "0-rgba--perspShape-file-half" 
  "maximumvalue" "double" 1 50 
Create "3delight_ignore_matte" "attributes" 
SetAttribute "3delight_ignore_matte" 
  "matte" "int" 1 0 
  "matte.priority" "int" 1 2 
SetAttribute ".global" 
  "quality.shadingsamples" "int" 1 64 
  "quality.volumesamples" "int" 1 16 
SetAttribute ".global" 
  "maximumraydepth.diffuse" "int" 1 2 
  "maximumraydepth.reflection" "int" 1 2 
  "maximumraydepth.refraction" "int" 1 4 
  "maximumraydepth.hair" "int" 1 5 
SetAttribute ".global" 
  "maximumraylength.specular" "double" 1 1000 
  "maximumraylength.diffuse" "double" 1 1000 
  "maximumraylength.reflection" "double" 1 1000 
  "maximumraylength.refraction" "double" 1 1000 
  "maximumraylength.hair" "double" 1 1000 
SetAttribute ".global" 
  "show.displacement" "int" 1 1 
  "show.osl.subsurface" "int" 1 1 
SetAttribute ".global" 
  "bucketorder" "string" 1 "circle" 
  "live.pixelsize" "int" 1 8 
SetAttribute ".global" 
  "renderatlowpriority" "int" 1 1 
RenderControl 
  "action" "string" 1 "start" 
  "progressive" "int" 1 0 
RenderControl 
  "action" "string" 1 "wait" 
