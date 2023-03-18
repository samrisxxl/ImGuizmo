project "IMGUIZMO"
    kind "StaticLib"
    language "C++"
	cppdialect "C++17"
	staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	defines
	{
	}

	files
	{
		"*.h",
		"*.cpp"
	}

    includedirs
    {
		"%{includePaths.IMGUI}"
    }

	links
	{
		"IMGUI"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
