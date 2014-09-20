Highlight = require 'highlight.js/lib/highlight'

hljs      = new Highlight

hljs.registerLanguage 'bash', require('highlight.js/lib/languages/bash')
hljs.registerLanguage 'javascript', require('highlight.js/lib/languages/javascript')
hljs.registerLanguage 'coffeescript', require('highlight.js/lib/languages/coffeescript')

module.exports = hljs
