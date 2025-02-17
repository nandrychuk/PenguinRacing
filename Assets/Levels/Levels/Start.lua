return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 32,
  tileheight = 32,
  nextlayerid = 6,
  nextobjectid = 10,
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
      height = 16,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 224, 222, 225, 0, 0, 0, 0, 196, 0, 0, 0, 0, 0, 0, 0,
        0, 224, 222, 225, 168, 169, 170, 0, 197, 0, 0, 0, 0, 0, 0, 0,
        212, 0, 2147483863, 0, 182, 183, 184, 0, 197, 0, 0, 0, 0, 0, 0, 0,
        60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
        53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53
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
              id = 3,
              name = "Start",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 320,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 5,
              name = "End",
              type = "",
              shape = "rectangle",
              x = 480,
              y = 320,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 6,
              name = "Spawn",
              type = "",
              shape = "rectangle",
              x = 320,
              y = 288,
              width = 32,
              height = 32,
              rotation = 0,
              visible = true,
              properties = {}
            },
            {
              id = 7,
              name = "Size",
              type = "",
              shape = "rectangle",
              x = 512,
              y = 512,
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
              id = 1,
              name = "",
              type = "",
              shape = "rectangle",
              x = 0,
              y = 320,
              width = 512,
              height = 192,
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
