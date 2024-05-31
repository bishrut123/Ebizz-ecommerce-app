const express = require("express");
const mongoose = require("mongoose");

const PORT = 3000;
const app = express();
const DB =
  "mongodb+srv://bishrut_uprety:bishrut123@cluster0.wi65ssf.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

const authRouter = require("./routes/auth");
app.use(express.json());
app.use(authRouter);

mongoose
  .connect(DB)
  .then(() => {
    console.log("connection successfull");
  })
  .catch((e) => {
    console.log(`error: ${e}`);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected to port ${PORT}`);
});
