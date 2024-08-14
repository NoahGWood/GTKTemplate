project "GTKTemplate"
    location "GTKTemplate"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++2a"
    staticruntime "off"
    systemversion "latest"

    targetdir ("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("%{wks.location}/build/" .. outputdir .. "/%{prj.name}")

    buildoptions { "`pkg-config --cflags gtkmm-3.0`" }
    linkoptions { "`pkg-config --libs gtkmm-3.0`" }

    files
    {
        "%{wks.location}/GTKTemplate/src/**.h",
        "%{wks.location}/GTKTemplate/src/**.cpp",
        "%{wks.location}/GTKTemplate/src/*/**.h",
        "%{wks.location}/GTKTemplate/src/*/**.cpp",
    }

    includedirs
    {
        "include",
    }

    links
    {
        "gtkmm-3.0"
    }

    filter "system:windows"
        defines
        {
            "CR_PLATFORM_WINDOWS"
        }

    filter "system:linux"
        defines
        {
            "CR_PLATFORM_LINUX"
        }

    filter "configurations:Debug"
        defines "CR_DEBUG"
        symbols "On"

    filter "configurations:Release"
        defines "CR_RELEASE"
        optimize "On"

    filter "configurations:Dist"
        defines "CR_DIST"
        optimize "On"

