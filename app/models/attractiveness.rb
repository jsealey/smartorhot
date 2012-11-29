class Attractiveness < ActiveRecord::Base
  belongs_to :user
  attr_accessible :dumb_count, :hot_count, :references, :smart_count, :ugly_count
end
