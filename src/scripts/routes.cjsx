{Router, Routes, Route, DefaultRoute} = require 'react-crossroads'

ApplicationRoutes = ->
  <Router>
    <Routes path='/' handler={require './application-navbar'}>
      <DefaultRoute name='home' handler={require './home'} />
      <Route name='documentation' handler={require './documentation'} />
    </Routes>
  </Router>

module.exports = ApplicationRoutes
