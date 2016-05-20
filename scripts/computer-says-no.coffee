# Description:
#   Respond to computer says no
#
# Dependencies:
#   None
#
# Configuration:
#   none
#
# Commands:
#   computer says no - Displays a motivational image
#
# Author:
#   mikechernev


module.exports = (robot) ->

  robot.hear /(computer\s*(says\s*)?)?no/i, (msg) ->
    msg.send 'http://gph.is/1cBhkCq'
