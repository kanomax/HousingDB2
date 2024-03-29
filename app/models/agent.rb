class Agent < ActiveRecord::Base
belongs_to :listing
belongs_to :sale

validates_presence_of :name
validates :email, :uniqueness => true
validates_numericality_of :phone, :greater_than_or_equal_to => 0, :allow_blank => true, :only_integer => true
end
