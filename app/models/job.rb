class Job < ApplicationRecord
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    has_one_attached :resume
    
    JOB_TYPES =["Full-time", "Part-time", "Contract", "Freelance"]
    

end
