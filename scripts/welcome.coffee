# Description:
#   Shows a welcome message in a specific room
#
# Dependencies:
#   None
#
# Configuration:
#   none
#
# Commands:
#   none
#
# Author:
#   mikechernev

welcomeRoom = process.env.WELCOME_ROOM or 'general'
welcomeMessage = process.env.WELCOM_MSG or 'Welcome to BOIK :) If you want to make me better contribute to http://s.m1k3.pw/1NqVaYT'
module.exports = (robot) ->
  robot.enter (bot) ->
    bot.reply welcomeMessage if bot.message.room == welcomeRoom
