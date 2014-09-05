require './google-analytics' if PRODUCTION

React = require 'react'
global.React = React # For Chrome dev tool support
ApplicationRoutes = require './routes'

React.renderComponent <ApplicationRoutes />, document.body
