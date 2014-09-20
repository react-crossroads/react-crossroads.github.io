React = require 'react'

InProgress = React.createClass
  displayName: 'InProgress'
  render: ->
    <div>
      <div className='h1'>
        <i className="fa fa-cogs"></i> Work in Progress!
      </div>
      In the meantime check out the address book <a href='https://github.com/react-crossroads/react-crossroads/tree/master/examples/address-book'>example</a> in the source.
    </div>

module.exports = InProgress
