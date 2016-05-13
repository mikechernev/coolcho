module.exports = (robot) ->
  robot.respond /(booty)\s*me/i, (bot) ->
    apiUrl = 'http://api.obutts.ru/butts/' + Math.floor(Math.random() * 5000) + '/1/rank'
    bot.http(apiUrl).get() (err, res, body) ->
      return if err
      data = JSON.parse body
      bot.reply "http://media.obutts.ru/#{data[0].preview}"
