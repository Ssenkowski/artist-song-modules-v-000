require 'pry'
require_relative '../lib/concerns/memorable'
class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    all.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

  def self.all
    @@songs
  end
end
