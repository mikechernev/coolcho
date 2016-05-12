request = require 'request'

module.exports = (robot) ->
  robot.respond /(цици|tits|bosom|möpse|tieten|kozy|kwarktassen)\s*me/i, (bot) ->
    apiUrl = 'http://api.oboobs.ru/boobs/' + Math.floor(Math.random() * 5000) + '/1/rank'

    request.get apiUrl, (err, res) ->
      return if err

      APIresponse = JSON.parse res.body
      bot.reply "http://media.oboobs.ru/" + APIresponse[0].preview