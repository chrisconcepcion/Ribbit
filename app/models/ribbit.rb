class Ribbit < ActiveRecord::Base
	belongs_to :user
	default_scope order: 'created_at DESC'
	
	validates :contents, length: { maximum: 140 }
end
