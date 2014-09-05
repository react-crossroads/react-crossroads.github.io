React = require 'react'
Jumbotron = require 'react-bootstrap/Jumbotron'
PageHeader = require './page-header'

Home = React.createClass
  displayName: 'Home'
  render: ->
    <PageHeader>
      <span className='rc-home-icon'></span>
    </PageHeader>

module.exports = Home
