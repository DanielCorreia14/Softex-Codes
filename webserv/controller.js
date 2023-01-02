const express = require("express");
const router = express.Router();


router.get("/", function (req, res) {
  res.send("Wiki home page");
});


router.get("/about", function (req, res) {
  res.send("About this wiki");
});

module.exports = router;

const wiki = require("./wiki.js");

app.use("/wiki", wiki);

router.get("/about", function (req, res) {
  res.send("About this wiki");
});

router.post("/about", (req, res) => {
  res.send("About this wiki");
});

app.get(/.*fish$/, function (req, res) {

});

app.get("/users/:userId/books/:bookId", (req, res) => {
  res.send(req.params);
});

const Author = require("../models/author");


exports.author_list = (req, res) => {
  res.send("NOT IMPLEMENTED: Author list");
};


exports.author_detail = (req, res) => {
  res.send(`NOT IMPLEMENTED: Author detail: ${req.params.id}`);
};


exports.author_create_get = (req, res) => {
  res.send("NOT IMPLEMENTED: Author create GET");
};


exports.author_create_post = (req, res) => {
  res.send("NOT IMPLEMENTED: Author create POST");
};

exports.author_delete_get = (req, res) => {
  res.send("NOT IMPLEMENTED: Author delete GET");
};


exports.author_delete_post = (req, res) => {
  res.send("NOT IMPLEMENTED: Author delete POST");
};

exports.author_update_get = (req, res) => {
  res.send("NOT IMPLEMENTED: Author update GET");
};


exports.author_update_post = (req, res) => {
  res.send("NOT IMPLEMENTED: Author update POST");
};
