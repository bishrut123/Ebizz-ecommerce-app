const express = require("express");

const authRouter = express.Router();

authRouter.post("/api/signup", (req, res) => {
  const { name, email, password } = req.body;
  //get data from client
  //post data in databse
  // return data to user
});
module.exports = authRouter;
