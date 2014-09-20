React = require 'react'
DocShell = require './shell'
InProgress = require './work-in-progress'
Code = require './code'

Installation = React.createClass
  displayName: 'Installation'
  render: ->
    <DocShell title='Installation'>
      Using either WebPack or Browserify you can consume this module like most other modules on npm.
      <Code src='install-bash' />
      Then in your source files require like so:
      <Code src='simple-require'/>
    </DocShell>

module.exports = Installation
