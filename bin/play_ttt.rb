#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'game_runner'

game_runner = GameRunner.new
game_runner.run
