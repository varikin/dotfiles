local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

-- Make it pretty
config.color_scheme = "Pixiefloss (Gogh)"
config.font = wezterm.font("JetBrainsMonoNerdFont")
config.font_size = 12
config.window_background_opacity = 0.83
config.window_decorations = "NONE"
config.use_fancy_tab_bar = false

-- Make it useable
config.enable_scroll_bar = true
config.default_cursor_style = "BlinkingBar"

-- Setup keybindings
config.keys = {
	{ key = "t", mods = "CTRL", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "t", mods = "CTRL|SHIFT", action = act.ShowTabNavigator },
	{ key = "c", mods = "ALT", action = act.CopyTo("Clipboard") },
	{ key = "v", mods = "ALT", action = act.PasteFrom("Clipboard") },
}

-- ALT + Number to switch tabs
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "ALT",
		action = act.ActivateTab(i - 1),
	})
end

config.mouse_bindings = {
	{
		-- Only select text on click
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act.CompleteSelection("Clipboard"),
	},
	{
		-- Disable 'Down' event to avoid weird behaviors
		event = { Down = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = act.Nop,
	},
	{
		-- Open Hyperlinks with ALT-Click
		event = { Up = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = act.OpenLinkAtMouseCursor,
	},
	{
		-- Disable 'Down' event to avoid weird program behaviors
		event = { Down = { streak = 1, button = "Left" } },
		mods = "ALT",
		action = act.Nop,
	},
}

return config
