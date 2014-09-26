fs = require 'fs'

module.exports =
  'install-bash': [
    lang: 'bash'
    src: fs.readFileSync "#{__dirname}/install-bash.sh", 'utf8'
  ]
  'simple-require': [
    lang: 'javascript'
    src: fs.readFileSync "#{__dirname}/simple-require.js", 'utf8'
   ,
    lang: 'coffeescript'
    src: fs.readFileSync "#{__dirname}/simple-require.coffee", 'utf8'
  ]
  'getting-started': [
    lang: 'javascript'
    src: fs.readFileSync "#{__dirname}/getting-started.jsx", 'utf8'
   ,
    lang: 'coffeescript'
    src: fs.readFileSync "#{__dirname}/getting-started.cjsx", 'utf8'
  ]
  'getting-started-handler': [
    lang: 'javascript'
    src: fs.readFileSync "#{__dirname}/getting-started-handler.jsx", 'utf8'
   ,
    lang: 'coffeescript'
    src: fs.readFileSync "#{__dirname}/getting-started-handler.cjsx", 'utf8'
  ]
