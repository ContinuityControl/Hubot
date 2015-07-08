# Any time Hobbes hears "cheese",
# he gives you a pic.

module.exports = (robot) ->
  robot.hear /cheese/i, (msg) ->
    msg.send "http://media.giphy.com/media/VFI9mJl4dMDQY/giphy.gif"
