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
      { test: /\.less$/, loader: "style!css!less" },
      { test: /\.css$/, loader: "style!css" }
    ]
  },
  resolve: {
    extensions: ['', '.coffee', '.cjsx', '.js', '.jsx', '.less']
  }
};
