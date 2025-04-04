return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 32,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 8,
  nextobjectid = 23,
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
    },
    {
      name = "Ice",
      firstgid = 129,
      class = "",
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      columns = 14,
      image = "../../Art/Kenney/kenney_platformer-art-winter/sheet_32px.png",
      imagewidth = 448,
      imageheight = 224,
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
      tilecount = 98,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 32,
      id = 3,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        36, 35, 35, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        36, 36, 36, 36, 36, 35, 35, 35, 0, 0, 0, 0, 0, 0, 0, 0,
        36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 0, 0, 0, 0, 0, 0,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 0, 0, 0, 0,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 35, 0, 0,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 35, 0,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
        36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36, 36
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 32,
      id = 2,
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
        135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        149, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        145, 149, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        145, 145, 149, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 0, 0, 0, 133,
        53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 53, 53, 53, 145, 1073741973, 149, 135, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 53, 53, 145, 1073741973, 3221225608, 173, 172, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 53, 145, 1073741973, 3221225608, 0, 0, 0, 0, 0, 0, 145,
        53, 53, 53, 53, 53, 145, 1073741973, 3221225608, 0, 0, 0, 0, 0, 0, 136, 150,
        53, 53, 53, 53, 145, 1073741973, 3221225608, 0, 0, 0, 0, 0, 0, 136, 150, 145,
        53, 53, 53, 145, 1073741973, 3221225608, 0, 0, 0, 0, 0, 0, 136, 150, 145, 53,
        53, 53, 53, 145, 3221225608, 0, 0, 0, 0, 0, 0, 136, 150, 145, 53, 53,
        53, 53, 53, 145, 0, 0, 0, 0, 0, 0, 136, 150, 145, 53, 53, 53,
        53, 53, 53, 145, 135, 0, 0, 0, 0, 136, 150, 145, 145, 53, 53, 53,
        53, 53, 53, 145, 149, 135, 0, 0, 0, 3221225607, 1073741974, 145, 145, 53, 53, 53,
        53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 3221225607, 1073741974, 145, 145, 145, 145,
        53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 3221225607, 145, 145, 145, 145,
        53, 53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 173, 171, 172, 171,
        53, 53, 53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 53, 145, 145, 149, 135, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 53, 145, 145, 145, 149, 132, 132, 132, 132, 132,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 188, 172, 173, 171, 171, 172,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 0, 0, 0, 0, 0,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 0, 0, 0, 0
      }
    },
    {
      type = "group",
      id = 7,
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
          id = 5,
          name = "ice_Collision",
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
              id = 7,
              name = "",
              type = "",
              shape = "polygon",
              x = 0,
              y = 0,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 384, y = 384 },
                { x = 0, y = 384 }
              },
              properties = {}
            },
            {
              id = 9,
              name = "",
              type = "",
              shape = "polygon",
              x = 384,
              y = 384,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -384, y = 0 },
                { x = -384, y = -384 }
              },
              properties = {}
            },
            {
              id = 11,
              name = "",
              type = "",
              shape = "polygon",
              x = 128,
              y = 608,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 224, y = 224 },
                { x = 0, y = 224 }
              },
              properties = {}
            },
            {
              id = 12,
              name = "",
              type = "",
              shape = "polygon",
              x = 384,
              y = 736,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -96, y = -96 },
                { x = 0, y = -96 }
              },
              properties = {}
            },
            {
              id = 13,
              name = "",
              type = "",
              shape = "polygon",
              x = 288,
              y = 640,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = 192, y = -192 },
                { x = 192, y = 0 }
              },
              properties = {}
            },
            {
              id = 17,
              name = "",
              type = "",
              shape = "rectangle",
              x = 384,
              y = 640,
              width = 128,
              height = 96,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 19,
              name = "",
              type = "",
              shape = "rectangle",
              x = 480,
              y = 0,
              width = 32,
              height = 640,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 20,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 384,
              width = 128,
              height = 640,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 21,
              name = "",
              type = "",
              shape = "rectangle",
              x = 128,
              y = 832,
              width = 384,
              height = 192,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 22,
              name = "",
              type = "",
              shape = "polygon",
              x = 320,
              y = 384,
              width = 0,
              height = 0,
              rotation = 0,
              visible = true,
              polygon = {
                { x = 0, y = 0 },
                { x = -192, y = 192 },
                { x = -192, y = 0 }
              },
              properties = {}
            }
          }
        },
        {
          type = "objectgroup",
          draworder = "topdown",
          id = 6,
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
              id = 3,
              name = "Start",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 0,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 4,
              name = "End",
              type = "",
              shape = "rectangle",
              x = 480,
              y = 832,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 5,
              name = "Size",
              type = "",
              shape = "rectangle",
              x = 512,
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
