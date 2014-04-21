assert = require 'assertive'
{BoomerServer} = require '../../src/server.coffee'

describe 'BoomerServer', ->
  before ->
    @server = new BoomerServer()

  describe 'default responses', ->
    it 'returns a 200 http status code', ->
      assert.equal 200, @server.getResponse().status

    it 'returns an empty html response', ->
      assert.equal '', @server.getResponse().html

  it 'supports configuring the http status code of the next response', ->
    @server.setNextResponseStatusCode(302)
    assert.equal 302, @server.getResponse().status

  it 'supports configuring the html of the next response', ->
    @server.setNextResponseHtml('Hello World!')
    assert.equal 'Hello World!', @server.getResponse().html
