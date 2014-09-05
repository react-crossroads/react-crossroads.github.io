React = require 'react'
PageFooter = require './page-footer'
NavBar = require 'react-bootstrap/NavBar'
Nav = require 'react-bootstrap/Nav'
NavItem = require 'react-bootstrap/NavItem'
NavItemLink = require 'react-crossroads-bootstrap/lib/NavItemLink'
{Link} = require 'react-crossroads'

ApplicationNavBar = React.createClass
  displayName: 'ApplicationNavBar'
  render: ->
    brand =
      <Link to='home' className='navbar-brand'>
        <img src='/images/react-crossroads-transparent.png' />
        <span className='rc-react'>React</span>-<span className='rc-crossroads'>Crossroads</span>
      </Link>

    <div>
      <NavBar
        componentClass={React.DOM.header}
        className='rc-nav'
        brand={brand}
        staticTop>
        <Nav>
          <NavItemLink to='documentation'>Documentation</NavItemLink>
          <NavItem href='https://github.com/react-crossroads/react-crossroads'>Github</NavItem>
          <NavItem href='https://www.npmjs.org/package/react-crossroads'>Npm</NavItem>
        </Nav>
      </NavBar>
      <main>
        <this.props.activeRouteHandler />
      </main>
      <PageFooter />
    </div>

module.exports = ApplicationNavBar
