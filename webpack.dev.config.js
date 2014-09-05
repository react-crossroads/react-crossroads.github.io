var webpack = require('webpack');
var config = require('./webpack.config');

config.entry = [
  'webpack-dev-server/client?http://localhost:8080',
  'webpack/hot/dev-server',
  config.entry
];

config.module.loaders[0].loader = 'react-hot!' + config.module.loaders[0].loader;
config.module.loaders[1].loader = 'react-hot!' + config.module.loaders[1].loader;

config.plugins = [
  new webpack.HotModuleReplacementPlugin(),
  new webpack.optimize.DedupePlugin()
];

module.exports = config;
