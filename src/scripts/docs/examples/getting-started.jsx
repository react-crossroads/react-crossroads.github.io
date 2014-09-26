var React           = require('react');
var ReactCrossroads = require('react-crossroads');

var Router        = ReactCrossroads.Router;
var Routes        = ReactCrossroads.Routes;
var Route         = ReactCrossroads.Route;
var DefaultRoute  = ReactCrossroads.DefaultRoute;
var NotFoundRoute = ReactCrossroads.NotFoundRoute;

// Require in handlers
var ApplicationShell = require('./ApplicationShell');
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
);
