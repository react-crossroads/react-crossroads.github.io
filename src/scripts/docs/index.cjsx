React = require 'react'
DocShell = require './shell'
DocNavigation = require './navigation'
InProgress = require './work-in-progress'

Documentation = React.createClass
  displayName: 'Documentation'
  render: ->
    <DocShell title='Documentation'>
      <InProgress />
    </DocShell>

module.exports = Documentation
