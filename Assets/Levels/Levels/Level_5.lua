return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 8,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 6,
  nextobjectid = 18,
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
      width = 8,
      height = 32,
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
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        0, 0, 0, 0, 0, 0, 53, 53,
        0, 53, 53, 53, 53, 53, 53, 53,
        0, 53, 53, 53, 53, 53, 53, 53,
        0, 53, 53, 53, 53, 53, 53, 53,
        0, 53, 53, 53, 53, 53, 53, 53,
        0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 8,
      height = 32,
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
        68, 60, 60, 60, 60, 60, 60, 52,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53,
        36, 36, 36, 36, 36, 36, 36, 36,
        0, 0, 0, 0, 0, 0, 0, 36,
        43, 43, 43, 43, 43, 35, 0, 36,
        36, 0, 0, 0, 0, 0, 0, 36,
        36, 0, 51, 67, 0, 2147483715, 43, 36,
        36, 0, 36, 115, 43, 107, 36, 36,
        36, 0, 0, 0, 0, 0, 0, 0,
        36, 43, 43, 43, 43, 43, 43, 43
      }
    },
    {
      type = "group",
      id = 3,
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
              id = 6,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 0,
              width = 256,
              height = 800,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 9,
              name = "",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 800,
              width = 32,
              height = 160,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 10,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 832,
              width = 192,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 11,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 864,
              width = 32,
              height = 160,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 12,
              name = "",
              type = "",
              shape = "rectangle",
              x = 32,
              y = 992,
              width = 224,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 13,
              name = "",
              type = "",
              shape = "rectangle",
              x = 192,
              y = 896,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 14,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 928,
              width = 160,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 15,
              name = "",
              type = "",
              shape = "rectangle",
              x = 64,
              y = 896,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 16,
              name = "",
              type = "",
              shape = "polygon",
              x = 192,
              y = 896,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -32, y = 32 },
                { x = 0, y = 32 }
              },
              properties = {}
            },
            {
              id = 17,
              name = "",
              type = "",
              shape = "polygon",
              x = 96,
              y = 896,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 32, y = 32 },
                { x = 0, y = 32 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 5,
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
              id = 1,
              name = "Start",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 832,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 2,
              name = "End",
              type = "",
              shape = "rectangle",
              x = 224,
              y = 992,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 4,
              name = "Size",
              type = "",
              shape = "rectangle",
              x = 256,
              y = 1024,
              width = 32,
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
