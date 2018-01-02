var express = require('express');
var app = express();

app.get('/', function (req, res) {

  hello = "Hello World from newest version."
  res.send(hello);
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
