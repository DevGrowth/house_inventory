var express = require("express");
var router = express.Router();

router.get("/inventories", function (req, res, next) {
  res.send("You are in Inventory Routes");
});
