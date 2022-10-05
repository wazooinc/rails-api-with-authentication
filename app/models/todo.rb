class Todo < ApplicationRecord
    belongs_to :user

    scope :by_user, lambda {|user|
        where(:user_id => user.id)
    }

    # validations
    validates_presence_of :title

end
