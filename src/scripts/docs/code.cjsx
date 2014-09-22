React = require 'react/addons'
hljs = require './highlight'
examples = require './examples'
ButtonToolbar = require 'react-bootstrap/ButtonToolbar'
ButtonGroup = require 'react-bootstrap/ButtonGroup'
Button = require 'react-bootstrap/Button'
_ = require 'lodash'
cx = React.addons.classSet

langMap =
  javascript: 'JavaScript'
  coffeescript: 'CoffeeScript'

CodeExample = React.createClass
  displayName: 'CodeExample'

  propTypes:
    src: React.PropTypes.string.isRequired

  getInitialState: ->
    selectedOption: 0

  toggle: (option) ->
    @setState
      selectedOption: option

  componentDidMount: ->
    @highlight()

  componentDidUpdate: ->
    @highlight()

  highlight: ->
    node = @refs['code'].getDOMNode()
    hljs.highlightBlock node

  render: ->
    {src, lang} = examples[@props.src][@state.selectedOption]

    toggles = @renderToggles()

    classes =
      'rc-code-example': true
      'clearfix': true
      'has-toggle': toggles

    <div className={cx classes}>
      <pre className='highlight'>
        <code className={lang} ref='code'>
          {src}
        </code>
      </pre>
      {toggles}
    </div>

  renderToggles: ->
    return null unless examples[@props.src].length > 1

    buttons = _.map examples[@props.src], (example, index) =>
      isActive = index == @state.selectedOption
      <Button
        bsStyle={if isActive then 'primary' else 'default'}
        active={isActive}
        onClick={=> @toggle(index)}>
        {langMap[example.lang]}
      </Button>

    <div className='example-toggle'>
      <ButtonToolbar>
        <ButtonGroup bsSize='xsmall'>
          {buttons}
        </ButtonGroup>
      </ButtonToolbar>
    </div>


module.exports = CodeExample
