var Botkit = require('botkit');
var os = require('os');

var controller = Botkit.slackbot({
  debug: true
});
var bot = controller.spawn({
  token: "xoxb-116142226598-RwCuY9oFWp7a3E2h0JbRuw6e"
}).startRTM();

controller.on('direct_mention', function(bot, message) {
  bot.reply(message, "Hey there! Thanks for looking at my resume. To get to the good bits there are a few command you'll need. If you want to hear about my work experience type 'experience'. If you want to hear about my education type 'eduction'. If you want my contact information type 'contact'. If you want a list of my past awards and achievements type 'achievements'");
});

controller.hears(['experience', 'previous employment'],['ambient'], function(bot,message){
  return bot.reply(message, "2010 - experience. 2011 - experience. 2012 - experience");
});
