React = require 'react'
{Router, Routes, Route, DefaultRoute, NotFoundRoute} = require 'react-crossroads'

# Require in handlers
ApplicationShell = require './ApplicationShell'
...

React.renderComponent(
  <Router>
    <Routes path='/' handler={ApplicationShell}>
      <DefaultRoute name='home' handler={Home} />
      <Route name='contact-us' handler={ContactUs} />
      <Routes name='properties' handler={Properties}>
        <DefaultRoute name='property-search' handler={Search} />
        <Route name='recent-acquisitions' handler={RecentAcquisitions} />
        <Route name='property' path='{propertyId}' handler={PropertyDetails} />
        <NotFoundRoute handler={PropertyNotFound} />
      </Routes>
      <NotFoundRoute handler={PageNotFound} />
    </Routes>
  </Router>
  , document.body
)
