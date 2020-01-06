project "lua"
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

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"	