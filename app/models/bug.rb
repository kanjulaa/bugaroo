class Bug < ActiveRecord::Base

 belongs_to :user
    
validates :title, presence: true, length: {minimum: 0, maximum: 80}
validates :description, presence: true, length: {minimum: 0, maximum: 600}

    enum issue_type: [:issue, :enhancement, :feature]
    enum priority: [:low, :medium, :high] 
    enum status: [:open, :closed, :monitor] 
  
end
