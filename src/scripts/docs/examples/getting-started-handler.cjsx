React = require 'react'
{Link} = require 'react-crossroads'

ApplicationShell = React.createClass
  displayName: 'ApplicationShell'
  render: ->
    <div>
      <nav>
        <ul>
          <li>
            <Link to='home'>Home</Link>
          </li>
          <li>
            <Link to='contact-us'>Contact Us</Link>
          </li>
          <li>
            <Link to='properties'>Properties</Link>
          </li>
        </ul>
      </nav>
      <div className='content'>
        <@props.activeRouteHandler />
      </div>
    </div>

module.exports = ApplicationShell
