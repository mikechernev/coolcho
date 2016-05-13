module.exports = (robot) ->
  robot.respond /(цици|tits|bosom|möpse|tieten|kozy|kwarktassen)\s*me/i, (bot) ->
    apiUrl = 'http://api.oboobs.ru/boobs/' + Math.floor(Math.random() * 5000) + '/1/rank'
    bot.http(apiUrl).get() (err, res, body) ->
      return if err
      data = JSON.parse body
      bot.reply "http://media.oboobs.ru/#{data[0].preview}"
