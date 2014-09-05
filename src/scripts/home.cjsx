React = require 'react'
Jumbotron = require 'react-bootstrap/Jumbotron'
PageHeader = require './page-header'
Alert = require 'react-bootstrap/Alert'

Home = React.createClass
  displayName: 'Home'
  render: ->
    <div className='rc-home'>
      <PageHeader>
        <span className='rc-home-icon'></span>
        <h1 className='h4'>
          Client (and eventually Server) side routing for web applications built with React and using the Flux Architecture
        </h1>
      </PageHeader>
      <div className='container'>
        <Alert bsStyle='danger'>
          <i className="fa fa-exclamation-triangle fa-lg"></i> Still under active development, prior to the 1.0 release the API may change.
        </Alert>
      </div>
    </div>

module.exports = Home
