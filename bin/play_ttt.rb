#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'game_runner'
require 'game'
game = Game.new
game.start
game_runner = GameRunner.new
game_runner.run
