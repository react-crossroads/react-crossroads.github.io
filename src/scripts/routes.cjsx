{Router, Routes, Route, DefaultRoute, Redirect} = require 'react-crossroads'

DocRoutes = require './docs/routes'

ApplicationRoutes = ->
  <Router>
    <Routes path='/' handler={require './application-navbar'}>
      <DefaultRoute name='home' handler={require './home'} />
      <DocRoutes />
    </Routes>
    <Redirect fromPath='/documentation' to='docs' />
  </Router>

module.exports = ApplicationRoutes
