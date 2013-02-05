class Dater < ActiveRecord::Base
  attr_accessible :cupid_name, :first_name, :last_name, :cupid_pass

  has_many :cupid_matches
end
