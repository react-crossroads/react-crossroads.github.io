var React = require('react');
var Link = require('react-crossroads').Link;

var ApplicationShell = React.createClass({
  displayName: 'ApplicationShell',
  render: function() {
    return (
      <div>
        <nav>
          <ul>
            <li>
              <Link to='home'>Home</Link>
            </li>
            <li>
              <Link to='contact-us'>Contact Us</Link>
            </li>
            <li>
              <Link to='properties'>Properties</Link>
            </li>
          </ul>
        </nav>
        <div className='content'>
          <this.props.activeRouteHandler />
        </div>
      </div>
    );
  }
});

module.exports = ApplicationShell;
