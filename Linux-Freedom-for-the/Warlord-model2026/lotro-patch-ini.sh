     1	#!/bin/bash
     2	INI="/home/wils/Games/WARLORDLOTRO/Spillfiler/UserPreferences.ini"
     3	BAK="${INI}.bak"
     4	
     5	# Backup
     6	cp "$INI" "$BAK"
     7	echo "✓ Backup lagret: $BAK"
     8	
     9	# Patch innstillinger
    10	sed -i \
    11	  's/AnisotropicQuality=16/AnisotropicQuality=8/' \
    12	  's/TextureDetail=VeryHigh/TextureDetail=High/' \
    13	  's/ModelDetail=UltraHigh/ModelDetail=High/' \
    14	  's/ObjectDrawDistance=UltraHigh/ObjectDrawDistance=High/' \
    15	  's/LandscapeDrawDistance=VeryHigh/LandscapeDrawDistance=High/' \
    16	  's/SurfaceReflections=High/SurfaceReflections=Low/' \
    17	  's/AmbientOcclusion=True/AmbientOcclusion=False/' \
    18	  's/MemoryUsage=1.00/MemoryUsage=0.75/' \
    19	  's/ShadowMapQuality=2/ShadowMapQuality=1/' \
    20	  's/LandscapeLightingQuality=High/LandscapeLightingQuality=Medium/' \
    21	  's/StencilShadows=High/StencilShadows=Medium/' \
    22	  's/InteractiveWater=High/InteractiveWater=Medium/' \
    23	  's/AtmosphericsDetail=High/AtmosphericsDetail=Medium/' \
    24	  "$INI"
    25	
    26	echo "✓ INI patchet!"
    27	echo ""
    28	echo "--- Verifisering ---"
    29	grep -E "Anisotropic|TextureDetail|ModelDetail|ObjectDraw|LandscapeDraw|SurfaceRef|AmbientOcc|MemoryUsage|ShadowMap|LandscapeLight|StencilShadow|InteractiveWater|Atmospherics" "$INI"
