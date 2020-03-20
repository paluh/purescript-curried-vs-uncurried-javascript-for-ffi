"use strict";
var $foreign = require("./foreign.js");
var Data_Show = require("../Data.Show/index.js");
var Effect_Console = require("../Effect.Console/index.js");
var main = function __do() {
    Effect_Console.log(Data_Show.show(Data_Show.showInt)($foreign.runGcdUncurried(15)(20)))();
    Effect_Console.log(Data_Show.show(Data_Show.showInt)($foreign.runGcdUncurriedFix(15, 20)))();
    Effect_Console.log(Data_Show.show(Data_Show.showInt)($foreign.runGcd(15)(20)))();
    return Effect_Console.log(Data_Show.show(Data_Show.showInt)($foreign.runGcdFix(15)(20)))();
};
module.exports = {
    main: main,
    runGcdUncurried: $foreign.runGcdUncurried,
    runGcdUncurriedFix: $foreign.runGcdUncurriedFix,
    runGcd: $foreign.runGcd,
    runGcdFix: $foreign.runGcdFix
};
