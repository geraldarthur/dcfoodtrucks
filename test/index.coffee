# console.log(process.env)

Tests  = require '../node_modules/hubot/test/tests'
assert = require 'assert'
fs = require 'fs'
helper = Tests.helper()
Robot = require '../node_modules/hubot/src/robot'
{TextMessage} = require '../node_modules/hubot/src/message'
console.log('aaa')
console.log require('../dcfoodtrucks') helper
console.log 'bbb'

# start up a danger room for google images
danger = Tests.danger helper, (req, res, url) ->
  console.log 'OH YEA'
  res.writeHead 200
  res.end fs.readFileSync __dirname + '/index.html', 'utf8'


# callbacks for when hubot sends messages
mu    = "http://mustachify.me/?src="
tests = [
  (msg) -> 
    assert.ok false
    console.log msg.split('\n').count
    assert.equal msg.split('\n'), 30
  # (msg) ->
  #   assert.
  # (msg) -> assert.equal "#{mu}(foo)#.png", msg
  # (msg) -> assert.equal "#{mu}(foo)#.png", msg
  # (msg) -> assert.equal "#{mu}(foo)#.png", msg
  # (msg) -> assert.equal "(foo)#.png", msg
  # (msg) -> assert.equal "(foo)#.png", msg
  # (msg) -> assert.equal "(foo)#.png", msg
  # (msg) -> assert.equal "(animated foo)#.png", msg
]

# run the async tests
messages = [
  'helper: dcfoodtruck me'
  # 'helper: dcft me dc'
  # 'helper: stache foo',
  # 'helper: mustache me foo',
  # 'helper: mustache foo',
  # 'helper: img foo',
  # 'helper: image me foo',
  # 'helper: image foo',
  # 'helper: animate me foo'
]

user = {}
console.log tests
danger.start tests, ->
  # assert.ok false
  console.log('yea')
  for message in messages
    console.log message
    helper.receive new TextMessage user, message

  # helper.stop()
