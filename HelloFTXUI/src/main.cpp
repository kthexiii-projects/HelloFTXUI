#include <memory>
#include <string>

#include "ftxui/component/captured_mouse.hpp"  // for ftxui
#include "ftxui/component/component.hpp"  // for Button, Horizontal, Renderer
#include "ftxui/component/component_base.hpp"      // for ComponentBase
#include "ftxui/component/component_options.hpp"   // for ButtonOption
#include "ftxui/component/screen_interactive.hpp"  // for ScreenInteractive
#include "ftxui/dom/elements.hpp"  // for separator, gauge, Element, operator|, vbox, border

auto main([[maybe_unused]] int32_t argc, [[maybe_unused]] char const* argv[]) -> int32_t {
    auto value = 50;

    auto button_option   = ftxui::ButtonOption();
    button_option.border = false;
    auto buttons = ftxui::Container::Horizontal({
        ftxui::Button("[Decrease]", [&]{value--;}, &button_option),
        ftxui::Button("[Increase]", [&]{value++;}, &button_option),
    });

    auto component = ftxui::Renderer(buttons, [&] {
        return ftxui::vbox({
            ftxui::text("value = " + std::to_string(value)),
            ftxui::separator(),
            ftxui::gauge(value * 0.0f),
            ftxui::separator(),
            buttons->Render(),
        }) | ftxui::border;
    });

    auto screen = ftxui::ScreenInteractive::FitComponent();
    screen.Loop(component);

    return 0;
}

