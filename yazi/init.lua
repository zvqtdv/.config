

-- ~/.config/yazi/init.lua
function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then

		time = ""

	elseif os.date("%Y", time) == os.date("%Y") then

		time = os.date("%b %d %H:%M", time)
	else
		time = os.date("%b %d  %Y", time)
	end


	local size = self._file:size()
	return string.format("%s %s", size and ya.readable_size(size) or "-", time)
end


require("smart-enter"):setup {
	open_multi = true,
}

-- ~/.config/yazi/init.lua
require("relative-motions"):setup({ show_numbers="relative", show_motion = true, enter_mode ="first" })

Status:children_add(function(self)
	local h = self._current.hovered

	if h and h.link_to then
		return " -> " .. tostring(h.link_to)
	else
		return ""
	end
end, 3300, Status.LEFT)

-- require("starship"):setup({
--     -- Hide flags (such as filter, find and search). This is recommended for starship themes which
--     -- are intended to go across the entire width of the terminal.
--     hide_flags = false, -- Default: false
--     -- Whether to place flags after the starship prompt. False means the flags will be placed before the prompt.
--
--     flags_after_prompt = true, -- Default: true
--     -- Custom starship configuration file to use
--     config_file = "~/.config/starship_full.toml", -- Default: nil
-- })

require("bunny"):setup({
  hops = {
    { key = "/",          path = "/",                                    },
    { key = "t",          path = "/tmp",                                 },
    { key = "n",          path = "/nix/store",     desc = "Nix store"    },

    { key = { "~", "~" },          path = "~",              desc = "Home"         },
    { key = { "~", "m" },          path = "~/Music",        desc = "Music"        },
    { key = { "~", "d" },          path = "~/Desktop",      desc = "Desktop"      },
    { key = { "~", "D" },          path = "~/Documents",    desc = "Documents"    },
    { key = { "~", "c" },          path = "~/.config",      desc = "Config files" },
    { key = { "~", "s" }, path = "~/.local/share", desc = "Local share"  },
    { key = { "~", "b" }, path = "~/.local/bin",   desc = "Local bin"    },
    { key = { "~", "t" }, path = "~/.local/state", desc = "Local state"  },
   
    { key = { "m", "u" }, path = "/mnt/c/Users/zv", desc = "Users_w"  },
    { key = { "m", "p" }, path = "/mnt/e/Project", desc = "Project_w"  },
    { key = { "m", "s" }, path = "/mnt/e/ProgSty", desc = "Program study_w"  },
    { key = { "m", "i" }, path = "/mnt/e/OneDrive/DataBase/InformationToFollow", desc = "information"  },
    -- key and path attributes are required, desc is optional
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = true, -- Enable ephemeral hops, default is true
  tabs = true, -- Enable tab hops, default is true
  notify = false, -- Notify after hopping, default is false
  fuzzy_cmd = "fzf", -- Fuzzy searching command, default is "fzf"
})


require("projects"):setup({
    save = {
        method = "yazi", -- yazi | lua
        yazi_load_event = "@projects-load", -- event name when loading projects in `yazi` method
        lua_save_path = "", -- path of saved file in `lua` method, comment out or assign explicitly
                            -- default value:
                            -- windows: "%APPDATA%/yazi/state/projects.json"

                            -- unix: "~/.local/state/yazi/projects.json"
    },
    last = {
        update_after_save = true,
        update_after_load = true,
        load_after_start = false,
    },
    merge = {
        event = "projects-merge",
        quit_after_merge = false,
    },
    event = {
        save = {
            enable = true,
            name = "project-saved",
        },
        load = {

            enable = true,
            name = "project-loaded",
        },
        delete = {
            enable = true,
            name = "project-deleted",
        },
        delete_all = {
            enable = true,
            name = "project-deleted-all",
        },
        merge = {

            enable = true,
            name = "project-merged",
        },
    },
    notify = {

        enable = true,
        title = "Projects",
        timeout = 3,
        level = "info",
    },
})




