# Description:
#   Life is short, and art long. It's ok. Keep going.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Say "yolo" - display the Ars Longa
#   Say "life is short" - finish the Ars Longa
#
# Author:
#   danbernier (adapted from treznick, and, once removed, from klamping)

ars_longa = [
  "Life is short,",
  "and art long,",
  "opportunity fleeting,",
  "experimentations perilous,",
  "and judgement difficult.",
]

module.exports = (robot) ->
  robot.hear /\b(yolo)\b/i, (msg) ->
    msg.send ars_longa.join("\n")

  robot.hear /life is short/i, (msg) ->
    msg.send "..." + ars_longa.slice(1).join("\n")
