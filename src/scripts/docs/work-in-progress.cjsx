React = require 'react'

InProgress = React.createClass
  displayName: 'InProgress'
  render: ->
    <div>
      <div className='h1'>
        <i className="fa fa-cogs"></i> Work in Progress!
      </div>
      <p>In the meantime check out:</p>
      <ul>
        <li>Address book <a href='https://github.com/react-crossroads/react-crossroads/tree/master/examples/address-book'>example</a> in the source.</li>
        <li>This site's <a href='https://github.com/react-crossroads/react-crossroads.github.io'>source</a>.</li>
      </ul>
        
    </div>

module.exports = InProgress
