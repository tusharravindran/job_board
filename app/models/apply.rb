class Apply < ApplicationRecord
    has_one_attached :resume
    validates :resume, presence:true
end
