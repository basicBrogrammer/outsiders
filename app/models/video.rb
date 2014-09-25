class Video < ActiveRecord::Base
  require 'faraday'
  require 'typhoeus'
  require 'typhoeus/adapters/faraday'
  belongs_to :user
  dragonfly_accessor :movie
  acts_as_votable
end
