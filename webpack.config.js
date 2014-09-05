var path = require('path');

module.exports = {
  entry: "./app.coffee",
  output: {
    path: path.join(__dirname, 'build'),
    publicPath: "/build/",
    filename: "bundle.js"
  },
  module: {
    loaders: [
      { test: /\.coffee$/, loader: "coffee" },
      { test: /\.cjsx$/, loader: "coffee!cjsx" },
      { test: /\.less$/, loader: "style!css!less" },
      { test: /\.css$/, loader: "style!css" },
      { test:/\.json$/, loader: "json" },
      { test:/\.jpe?g$|\.gif$|\.png$/, loader: "url?prefix=img/&limit=5000" }
    ]
  },
  resolve: {
    extensions: ['', '.coffee', '.cjsx', '.js', '.jsx', '.less']
  }
};
