return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 40,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 6,
  nextobjectid = 9,
  properties = {},
  tilesets = {
    {
      name = "Ground",
      firstgid = 1,
      class = "",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "../../Art/Kenney/Platformer Pack Redux (360 assets)/Spritesheets/spritesheet_ground_32px.png",
      imagewidth = 256,
      imageheight = 512,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 32,
        height = 32
      },
      properties = {},
      wangsets = {},
      tilecount = 128,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 40,
      id = 2,
      name = "Background",
      class = "",
      visible = true,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 70, 0, 0, 70, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 70, 0, 70, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 70, 70, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 40,
      id = 1,
      name = "Foreground",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        60, 60, 60, 60, 60, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60
      }
    },
    {
      type = "group",
      id = 5,
      name = "Objects",
      class = "",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      layers = {
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 4,
          name = "Markers",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 6,
              name = "Start",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 256,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 7,
              name = "End",
              type = "",
              shape = "rectangle",
              x = 480,
              y = 1248,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 8,
              name = "Size",
              type = "",
              shape = "rectangle",
              x = 512,
              y = 1280,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 3,
          name = "ground_Collision",
          class = "",
          visible = true,
          opacity = 1,
          offsetx = 0,
          offsety = 0,
          parallaxx = 1,
          parallaxy = 1,
          properties = {},
          objects = {
            {
              id = 1,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 256,
              width = 192,
              height = 1024,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 3,
              name = "",
              type = "",
              shape = "rectangle",
              x = 480,
              y = 0,
              width = 32,
              height = 1152,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 5,
              name = "",
              type = "",
              shape = "rectangle",
              x = 192,
              y = 1248,
              width = 320,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            }
          }
        }
      }
    }
  }
}
