React = require 'react'
PageHeader = require '../page-header'
DocNavigation = require './navigation'

DocShell = React.createClass
  displayName: 'DocShell'

  propTypes:
    title: React.PropTypes.string.isRequired

  render: ->
    <div className='rc-documentation'>
      <PageHeader>
        <h1>
          {@props.title}
        </h1>
      </PageHeader>
      <div className='container'>
        <DocNavigation className='col-md-2' />
        <div className='col-md-10'>
          {@props.children}
        </div>
      </div>
    </div>

module.exports = DocShell
