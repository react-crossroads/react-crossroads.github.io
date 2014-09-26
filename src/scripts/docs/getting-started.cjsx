React = require 'react'
DocShell = require './shell'
InProgress = require './work-in-progress'
Code = require './code'

GettingStarted = React.createClass
  displayName: 'GettingStarted'
  render: ->
    <DocShell title='Getting Started'>
      <p>The basic concept is to define an application layout that child components are nested under with the router deciding which chain of components are active. In essence the router will stand as a screen activator as described by Jeremy Miller<sup><a href='http://codebetter.com/jeremymiller/2009/09/07/screen-activator-pattern/'>1</a></sup>. Route activation is designed around Facebook's Flux design pattern<sup><a href='http://facebook.github.io/react/docs/flux-overview.html'>2</a></sup> and relies on React's default lifecycle events<sup><a href='http://facebook.github.io/react/docs/component-specs.html'>3</a></sup>. So, enough about the architecture, what does it look like?</p>
      <Code src='getting-started' />

      Each handler then in turn render is responsible for rendering the child handler via the prop <code>this.props.activeRouteHandler</code>. There is also a <code>Link</code> component that can be used to reference routes within your application by name. Like So:

      <Code src='getting-started-handler' />
    </DocShell>

module.exports = GettingStarted
