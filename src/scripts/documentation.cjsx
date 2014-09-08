React = require 'react'
PageHeader = require './page-header'

Documenation = React.createClass
  displayName: 'Documentation'
  render: ->
    <div className='rc-documentation'>
      <PageHeader>
        <h1>
          Documentation
        </h1>
      </PageHeader>
      <div className='container'>
        <div className='h1'>
          <i className="fa fa-cogs"></i> Work in Progress!
        </div>
        In the meantime check out the address book <a href='https://github.com/react-crossroads/react-crossroads/tree/master/examples/address-book'>example</a> in the source.
      </div>
    </div>

module.exports = Documenation
