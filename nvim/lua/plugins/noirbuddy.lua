return{
  'jesseleite/nvim-noirbuddy',
  dependencies = {
    { 'tjdevries/colorbuddy.nvim' }
  },
  -- lazy = false,
  priority = 1000,
  opts = {
    -- All of your `setup(opts)` will go here
    -- preset = "slate",
    colors = {
      -- background = "#1F1F1F",
      background = "#262626",
      primary = "#427b5d",
      -- secondary = '#7b7584',
      secondary = '#757590',
      noir_0 = '#ffffff', -- `noir_0` is light for dark themes, and dark for light themes
      noir_1 = '#f5f5f5',
      noir_2 = '#d5d5d5',
      noir_3 = '#b4b4b4',
      noir_4 = '#a7a7a7',
      noir_5 = '#949494',
      noir_6 = '#737373',
      noir_7 = '#535353',
      noir_8 = '#323232',
      noir_9 = '#212121',
    },
  },
}

