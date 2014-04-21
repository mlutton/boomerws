{exec} = require 'child_process'

task 'build', 'Build project for src/*.coffee to lib/*.js', ->
  exec 'coffee --compile --output lib/ src/', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

task 'server', 'Run server instance', ->
  exec 'coffee src/server.coffee', (err, stdout, stderr) ->
    throw err if err
    console.log stdout + stderr

REPORTER = "min"
 
task "test", "run tests", ->
  exec "NODE_ENV=test
    ./node_modules/.bin/mocha
    --recursive
    --compilers coffee:coffee-script-redux/register
    --reporter list
    --colors
  ", (err, output) ->
    throw err if err
    console.log output
