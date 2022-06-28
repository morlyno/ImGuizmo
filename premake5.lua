project "ImGuizmo"
   kind "StaticLib"
   language "c++"
   cppdialect "c++17"

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

   files
   {
      "ImGuizmo.h",
      "ImGuizmo.cpp",
      "ImGradient.h",
      "ImGradient.cpp",
      "ImSequencer.h",
      "ImSequencer.cpp",
      "ImCurveEdit.h",
      "ImCurveEdit.cpp",
      "GraphEditor.h",
      "GraphEditor.cpp",
      "ImZoomSlider.h"
   }

   includedirs
   {
      "%{IncludeDir.ImGui}"
   }

   links
   {
      "ImGui"
   }

   filter "system:windows"
      systemversion "latest"

   filter "configurations:Debug"
      runtime "Debug"
      symbols "on"

   filter "configurations:Release"
      runtime "Release"
      optimize "on"
      defines "NDEBUG"