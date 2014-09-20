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
