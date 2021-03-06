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
        <img src='/images/react-crossroads-transparent.png' />
        <span className='rc-react'>React</span>-<span className='rc-crossroads'>Crossroads</span>
      </a>

    <div>
      <NavBar
        componentClass={React.DOM.header}
        className='rc-nav'
        brand={brand}
        staticTop>
        <Nav>
          <NavItem href="https://github.com/mtscout6/react-crossroads">Github</NavItem>
          <NavItem href="https://www.npmjs.org/package/react-crossroads">Npm</NavItem>
        </Nav>
      </NavBar>
      <main>
        <this.props.activeRouteHandler />
      </main>
      <PageFooter />
    </div>

module.exports = ApplicationNavBar
