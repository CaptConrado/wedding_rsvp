class Rsvp < ActiveRecord::Base
  attr_accessible :email, :going, :name, :last_name
  validates_uniqueness_of :email
  validates_presence_of :name
  # validates_inclusion_of :going, :in ; [true, false]
end
