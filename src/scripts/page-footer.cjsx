React = require 'react'
packageJSON = require 'react-crossroads/package.json'

PageFooter = React.createClass
  displayName: 'PageFooter'
  render: ->
    <footer className="rc-footer" role="contentinfo">
      <div className="container">
        <div className="rc-social">
          <ul className="rc-social-buttons">
            <li>
              <iframe className="github-btn" src={'http://ghbtns.com/github-btn.html?user=react-crossroads&repo=react-crossroads&type=watch&count=true'} width={90} height={20} title="Star on GitHub" />
            </li>
            <li>
              <iframe className="github-btn" src={'http://ghbtns.com/github-btn.html?user=react-crossroads&repo=react-crossroads&type=fork&count=true'} width={92} height={20} title="Fork on GitHub" />
            </li>
          </ul>
        </div>
        <p>Code licensed under <a href="https://github.com/mtscout6/react-crossroads/blob/master/LICENSE" target="_blank">ISC</a>.</p>
        <ul className="rc-footer-links muted">
          <li>Currently v{packageJSON.version}</li>
          <li>·</li>
          <li><a href="https://github.com/react-crossroads/react-crossroads/">GitHub</a></li>
          <li>·</li>
          <li><a href="https://github.com/react-crossroads/react-crossroads/issues?state=open">Issues</a></li>
          <li>·</li>
          <li><a href="https://github.com/react-crossroads/react-crossroads/releases">Releases</a></li>
          <li>·</li>
          <li><a href="http://npm-stat.com/charts.html?package=react-crossroads"><img src='http://img.shields.io/npm/dm/react-crossroads.svg' /></a></li>
        </ul>
      </div>
    </footer>

module.exports = PageFooter
