# console.log(process.env)

Tests  = require '../node_modules/hubot/test/tests'
assert = require 'assert'
helper = Tests.helper()
Robot = require '../node_modules/hubot/src/robot'
dcft = require('../dcfoodtrucks') helper

console.log 'wtf'
dcft 'dcft me blahblah'
console.log 'done'
# assert.ok(false)
helper.stop()