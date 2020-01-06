project "tinyxml2"
    kind "StaticLib"
    language "C"
    staticruntime "on"
    
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{        
        "tinyxml2.h",
		"tinyxml2.cpp"
    }

    filter "system:linux"
        pic "On"
        systemversion "latest"
        staticruntime "On"
            
	filter "system:windows"
		systemversion "latest"        
		
		defines 
		{          
            "_CRT_SECURE_NO_WARNINGS"
		}

	filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
    
    filter "configurations:Dist"
        runtime "Release"
        optimize "on"