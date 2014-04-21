{defaults} = require 'underscore'

class BoomerServer
  constructor: ->
    @overrideResponse = {}
    @defaultResponse =
      status: 200
      html: ''

  setNextResponseStatusCode: (statusCode) =>
    @overrideResponse.status = statusCode

  setNextResponseHtml: (responseHtml) =>
    @overrideResponse.html = responseHtml

  getResponse: () =>
    response = defaults @overrideResponse, @defaultResponse
    @overrideResponse = {}
    response

module.exports = { BoomerServer }
