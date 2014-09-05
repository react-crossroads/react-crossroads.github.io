React = require 'react'

PageHeader = React.createClass
  displayName: 'PageHeader'
  render: ->
    <div className='rc-page-header'>
      <div className='container'>
        {@props.children}
      </div>
    </div>

module.exports = PageHeader
