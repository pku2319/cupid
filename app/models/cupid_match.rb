class CupidMatch < ActiveRecord::Base
  attr_accessible :dater_id, :percent

  belongs_to :dater
end
