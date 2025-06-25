const express = require("express")

const app = express()

const port = 3000

app.get("/", (req, res) => {
  res.send("宝塔面板真好用呀!")
})

app.listen(port, () => {
  console.log(`App listening on port ${port}`)
})
