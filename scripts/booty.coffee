# Description:
#   Shows a motivational photo
#
# Dependencies:
#   None
#
# Configuration:
#   none
#
# Commands:
#   hubot booty (me) - Displays a motivational image
#
# Author:
#   mikechernev

module.exports = (robot) ->
  robot.respond /booty(\s*me)?/i, (bot) ->
    apiUrl = 'http://api.obutts.ru/butts/' + Math.floor(Math.random() * 6400) + '/1/rank'
    bot.http(apiUrl).get() (err, res, body) ->
      return if err
      data = JSON.parse body
      bot.reply "http://media.obutts.ru/#{data[0].preview}"
