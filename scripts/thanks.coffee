# Any time Hobbes hears:
# "Thanks, Hobbes", "thx hobbes", etc,
# he says "You're welcome!"

pick_one = (array) ->
  i = Math.floor(Math.random() * array.length)
  array[i]

phrase = () ->
  pick_one([
    "You're welcome",
    "No problem",
    "No prob",
    "np",
    "Sure thing",
    "Anytime, sweetie",
    "Anytime",
    "Anything for you",
    "De nada, amigo",
    "Don't worry about it"])

punc = () ->
  pick_one(["", "!", ".", "!!"])

emoji = () ->
  pick_one(["", "", "", ":smile:", ":+1:", ":ok_hand:", ":punch:",
    ":bowtie:", ":smiley:", ":heart:", ":trollface:", ":heartbeat:",
    ":sparkles:", ":star:", ":star2:", ":smirk:", ":grinning:",
    ":smiley_cat:", ":sunflower:", ":tulip:", ":hibiscus:", ":cherry_blossom:"])

image = () ->
  "https://github.com/ContinuityControl/Hubot/blob/master/imgs/" + pick_one([
    "belly-rub.png",
    "dancing.gif",
    "hug.png",
    "youre-welcome.gif",
    "youre-welcome.png"])

youre_welcome = () ->
  pick_one([
    image(),
    [phrase(), punc(), " ", emoji()].join('')])

module.exports = (robot) ->
  robot.hear /(thx|thanks|thank you),?\s+hobbes/i, (msg) ->
    msg.send youre_welcome()

  robot.respond /(thx|thanks|thank you)/i, (msg) ->
    msg.send youre_welcome()
