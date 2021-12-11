FTXUI_INCLUDE = path.getabsolute('FTXUI/include')
print (FTXUI_INCLUDE)

project 'FTXUI'
  kind 'StaticLib'
  language 'C++'
  cppdialect 'C++17'

  targetdir '%{wks.location}/bin/%{cfg.buildcfg}/%{prj.name}'
  objdir '%{wks.location}/obj/%{cfg.buildcfg}/%{prj.name}'

  files {
    'FTXUI/src/ftxui/screen/box.cpp',
    'FTXUI/src/ftxui/screen/color.cpp',
    'FTXUI/src/ftxui/screen/color_info.cpp',
    'FTXUI/src/ftxui/screen/screen.cpp',
    'FTXUI/src/ftxui/screen/string.cpp',
    'FTXUI/src/ftxui/screen/terminal.cpp',
    'FTXUI/include/ftxui/screen/box.hpp',
    'FTXUI/include/ftxui/screen/color.hpp',
    'FTXUI/include/ftxui/screen/color_info.hpp',
    'FTXUI/include/ftxui/screen/screen.hpp',
    'FTXUI/include/ftxui/screen/string.hpp',

    'FTXUI/include/ftxui/dom/elements.hpp',
    'FTXUI/include/ftxui/dom/node.hpp',
    'FTXUI/include/ftxui/dom/requirement.hpp',
    'FTXUI/include/ftxui/dom/take_any_args.hpp',
    'FTXUI/src/ftxui/dom/blink.cpp',
    'FTXUI/src/ftxui/dom/bold.cpp',
    'FTXUI/src/ftxui/dom/border.cpp',
    'FTXUI/src/ftxui/dom/box_helper.cpp',
    'FTXUI/src/ftxui/dom/box_helper.hpp',
    'FTXUI/src/ftxui/dom/clear_under.cpp',
    'FTXUI/src/ftxui/dom/color.cpp',
    'FTXUI/src/ftxui/dom/composite_decorator.cpp',
    'FTXUI/src/ftxui/dom/dbox.cpp',
    'FTXUI/src/ftxui/dom/dim.cpp',
    'FTXUI/src/ftxui/dom/flex.cpp',
    'FTXUI/src/ftxui/dom/frame.cpp',
    'FTXUI/src/ftxui/dom/gauge.cpp',
    'FTXUI/src/ftxui/dom/graph.cpp',
    'FTXUI/src/ftxui/dom/gridbox.cpp',
    'FTXUI/src/ftxui/dom/hbox.cpp',
    'FTXUI/src/ftxui/dom/hflow.cpp',
    'FTXUI/src/ftxui/dom/inverted.cpp',
    'FTXUI/src/ftxui/dom/node.cpp',
    'FTXUI/src/ftxui/dom/node_decorator.cpp',
    'FTXUI/src/ftxui/dom/paragraph.cpp',
    'FTXUI/src/ftxui/dom/reflect.cpp',
    'FTXUI/src/ftxui/dom/scroll_indicator.cpp',
    'FTXUI/src/ftxui/dom/separator.cpp',
    'FTXUI/src/ftxui/dom/size.cpp',
    'FTXUI/src/ftxui/dom/spinner.cpp',
    'FTXUI/src/ftxui/dom/table.cpp',
    'FTXUI/src/ftxui/dom/text.cpp',
    'FTXUI/src/ftxui/dom/underlined.cpp',
    'FTXUI/src/ftxui/dom/util.cpp',
    'FTXUI/src/ftxui/dom/vbox.cpp',

    'FTXUI/include/ftxui/component/captured_mouse.hpp',
    'FTXUI/include/ftxui/component/component.hpp',
    'FTXUI/include/ftxui/component/component_base.hpp',
    'FTXUI/include/ftxui/component/event.hpp',
    'FTXUI/include/ftxui/component/mouse.hpp',
    'FTXUI/include/ftxui/component/receiver.hpp',
    'FTXUI/include/ftxui/component/screen_interactive.hpp',
    'FTXUI/src/ftxui/component/button.cpp',
    'FTXUI/src/ftxui/component/catch_event.cpp',
    'FTXUI/src/ftxui/component/checkbox.cpp',
    'FTXUI/src/ftxui/component/component.cpp',
    'FTXUI/src/ftxui/component/container.cpp',
    'FTXUI/src/ftxui/component/dropdown.cpp',
    'FTXUI/src/ftxui/component/event.cpp',
    'FTXUI/src/ftxui/component/input.cpp',
    'FTXUI/src/ftxui/component/maybe.cpp',
    'FTXUI/src/ftxui/component/menu.cpp',
    'FTXUI/src/ftxui/component/radiobox.cpp',
    'FTXUI/src/ftxui/component/radiobox.cpp',
    'FTXUI/src/ftxui/component/renderer.cpp',
    'FTXUI/src/ftxui/component/resizable_split.cpp',
    'FTXUI/src/ftxui/component/screen_interactive.cpp',
    'FTXUI/src/ftxui/component/slider.cpp',
    'FTXUI/src/ftxui/component/terminal_input_parser.cpp',
    'FTXUI/src/ftxui/component/terminal_input_parser.hpp',
    'FTXUI/src/ftxui/component/toggle.cpp',
  }

  includedirs {
    FTXUI_INCLUDE,
    'FTXUI/src'
  }

  filter 'system:macosx'
    system 'macosx'

  filter 'system:linx'
    system 'linux'

  filter 'system:windows'
    system 'windows'

    buildoptions {
      '/W3',
      '/WX',
      '/wd4244',
      '/wd4267',
      '/D_CRT_SECURE_NO_WARNINGS',
    }

  filter 'configurations:debug'
    symbols 'On'

  filter 'configurations:release'
    optimize 'On'

