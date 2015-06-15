# Any time Hobbes hears:
# "Thanks, Hobbes", "thx hobbes", etc,
# he says "You're welcome!"

pick_one = (array) ->
  i = Math.floor(Math.random() * array.length)
  array[i]

phrases = [
  "You're welcome",
  "No problem",
  "No prob",
  "np",
  "Sure thing",
  "Anytime",
  "Anything for you",
  "Don't worry about it"
]

punc = [
  "", "!", ".", "!!"
]

emoji = ["", "", "", ":smile:", ":+1:", ":ok_hand:", ":punch:",
  ":bowtie:", ":smiley:", ":heart:", ":trollface:", ":heartbeat:",
  ":sparkles:", ":star:", ":star2:", ":smirk:", ":grinning:",
  ":smiley_cat:"]

youre_welcome = () ->
  [pick_one(phrases), pick_one(punc), " ", pick_one(emoji)].join('')

module.exports = (robot) ->
  robot.hear /(thx|thanks|thank you),?\s+hobbes/i, (msg) ->
    msg.send youre_welcome()

  robot.respond /(thx|thanks|thank you)/i, (msg) ->
    msg.send youre_welcome()





