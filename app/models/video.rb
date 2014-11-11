class Video < ActiveRecord::Base
  require 'faraday'
  require 'typhoeus'
  require 'typhoeus/adapters/faraday'
  belongs_to :user
  acts_as_votable
end
