React = require 'react'
Nav = require('react-bootstrap').Nav
NavItem = require 'react-crossroads-bootstrap/lib/NavItemLink'

DocNavigation = React.createClass
  displayName: 'DocNavigation'
  render: ->
    @transferPropsTo(
      <div className='rc-doc-navigation'>
        <Nav stacked>
          <NavItem to='installation'>Installation</NavItem>
        </Nav>
      </div>
    )

module.exports = DocNavigation
