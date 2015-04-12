# Description:
#   Example scripts for you to examine and try out.
#
# Command:
#   Hobbes: pick one: Sitar, Zoi's, Tikkaway
#   Dan: Zoi's

module.exports = (robot) ->

  robot.respond /(pick|choose) one: (.*)$/i, (msg) ->
    choiceText = msg.match[2]
    choices = choiceText.split(",")
    choice = msg.random choices
    msg.reply choice
