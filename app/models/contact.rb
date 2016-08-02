class Contact < ActiveRecord::Base

  belongs_to :owner,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"
end
