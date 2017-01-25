exports.get_helloworld = function(req, res) {
  hello = {
    "responce": "hello world"
  }

  //Return a hello world
  res.json(hello);
};
