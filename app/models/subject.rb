require 'position_mover'
class Subject < ActiveRecord::Base
  attr_accessible :name, :position, :visible, :Subject_id, :image_url, :name, :imageable_id, :content, :imageable_type
  include PositionMover
   
  has_many :pages
  has_many :sub_subjects
  has_many :images, :as => :imageable
  # Don't need to validate (in most cases):
  #   ids, foreign keys, timestamps, booleans, counters
  validates_presence_of :name
  validates_length_of :name, :maximum => 255
  # validates_presence_of vs. validates_length_of :minimum => 1
  # different error messages: "can't be blank" or "is too short"
  # validates_length_of allows strings with only spaces!
  
  scope :visible, where(:visible => true)
  scope :invisible, where(:visible => false)
  scope :sorted, order('subjects.position ASC')
  scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
  def self.changedb
   ActiveRecord::Base.establish_connection(
  	:adapter  => "mysql2",
	:host     => "localhost",
  	:username => "root",
  	:password => "",
	:database => "simple_cms_production",
	:socket => "/opt/lampp/var/mysql/mysql.sock",
	:encoding => "utf8"
     )end
     
def self.changedb1
   ActiveRecord::Base.establish_connection(
  	:adapter  => "mysql2",
	:host     => "localhost",
  	:username => "root",
  	:password => "",
	:database => "simple_cms_development",
	:socket => "/opt/lampp/var/mysql/mysql.sock",
	:encoding => "utf8"
     )end

end
