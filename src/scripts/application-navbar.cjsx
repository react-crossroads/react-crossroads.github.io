React = require 'react'
PageFooter = require './page-footer'
NavBar = require 'react-bootstrap/NavBar'
Nav = require 'react-bootstrap/Nav'
NavItem = require 'react-bootstrap/NavItem'

ApplicationNavBar = React.createClass
  displayName: 'ApplicationNavBar'
  render: ->
    brand =
      <a href='/' className='navbar-brand'>
        <span className='rc-react'>React</span>-<span className='rc-crossroads'>Crossroads</span>
      </a>

    <div>
      <NavBar
        className='rc-nav'
        brand={brand}
        staticTop>
        <Nav>
          <NavItem>Test</NavItem>
        </Nav>
      </NavBar>
      <this.props.activeRouteHandler />
      <PageFooter />
    </div>

module.exports = ApplicationNavBar
