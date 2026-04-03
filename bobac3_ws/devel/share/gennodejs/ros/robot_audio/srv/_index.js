
"use strict";

let up_sync = require('./up_sync.js')
let Collect = require('./Collect.js')
let robot_semanteme = require('./robot_semanteme.js')
let Nav = require('./Nav.js')
let robot_tts = require('./robot_tts.js')
let Awake = require('./Awake.js')
let robot_iat = require('./robot_iat.js')
let Control = require('./Control.js')

module.exports = {
  up_sync: up_sync,
  Collect: Collect,
  robot_semanteme: robot_semanteme,
  Nav: Nav,
  robot_tts: robot_tts,
  Awake: Awake,
  robot_iat: robot_iat,
  Control: Control,
};
