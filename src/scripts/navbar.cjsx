React = require 'react'
NavBar = require 'react-bootstrap/NavBar'
Nav = require 'react-bootstrap/Nav'
NavItem = require 'react-bootstrap/NavItem'

AppNavBar = React.createClass
  displayName: 'AppNavBar'
  render: ->
    brand = <a href='/' className='navbar-brand'>React-Crossroads</a>

    <NavBar
      brand={brand}
      staticTop>
      <Nav>
        <NavItem>Test</NavItem>
      </Nav>
    </NavBar>

module.exports = AppNavBar
