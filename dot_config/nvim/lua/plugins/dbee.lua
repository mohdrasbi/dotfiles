require("dbee").setup{
    sources = {
      require("dbee.sources").MemorySource:new({
        {
            name = "postgres",
            url = "postgres://postgres:postgres@localhost:5432/api?sslmode=disable",
            type = "postgres",
        },
      }),
    },
  }
