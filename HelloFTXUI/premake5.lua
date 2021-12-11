project 'HelloFTXUI'
  kind 'ConsoleApp'
  language 'C++'
  staticruntime 'On'
  cppdialect 'C++17'

  targetdir('%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}')
  objdir('%{wks.location}/obj/%{cfg.buildcfg}/%{prj.name}')

  warnings 'Extra'
  enablewarnings {
    'all'
  }

  dependson {}

  defines {}

  files {
    'src/**.h',
    'src/**.hpp',
    'src/**.cpp',
  }

  includedirs {
    'src',
    FTXUI_INCLUDE,
  }

  links {
    'FTXUI'
  }

  filter {'not system:windows'}
    buildoptions {
      '-pedantic',
      '-Werror'
    }

  filter 'system:macosx'
    system 'macosx'

  filter 'system:linx'
    system 'linux'

  filter 'system:windows'
    system 'windows'

  filter 'configurations:debug'
    symbols 'On'

  filter 'configurations:release'
    optimize 'On'

