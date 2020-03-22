var Tg = require('../Test.Gcd');


exports.runGcdUncurried = function(n, m) {
  return Tg.gcd(n, m);
};

exports.runGcdUncurriedFix = function(n, m) {
  // gcd is uncurried function
  return Tg.gcd(n)(m);
};


exports.runGcd = function(n) {
  return function(m) {
    return function() {
      return Tg.gcd(n, m);
    };
  };
};

exports.runGcdFix = function(n) {
  return function(m) {
    return Tg.gcd(n)(m);
  };
};


exports.alertHandwritten = function(msg) {
  return function() {
    alert(msg);
  };
};

exports.alertImpl = alert;
