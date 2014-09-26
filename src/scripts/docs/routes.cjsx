{Router, Routes, Route, DefaultRoute, Redirect} = require 'react-crossroads'

module.exports = ->
  <Routes path='/docs'>
    <DefaultRoute name='docs' handler={require './index' } />
    <Route name='installation' handler={require './installation'} />
    <Route name='getting-started' handler={require './getting-started'} />
  </Routes>
