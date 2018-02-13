class Teacher < ApplicationRecord
    #this is for mail should be lowercase
    before_save {self.email = email.downcase}
    #teachername should be present 
    validates :name, presence: true, length: {maximum:30}
    #validate email address
    VALID_EMAIL_REGEX =/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: {maximum: 255},
                        format: { with: VALID_EMAIL_REGEX},
                        uniqueness: { case_sensitive: false}
    #one to many relationship between teachers and classes
    #so here one teacher has lot of  classes that's why we add bellow line in teacher model
    has_many :subjects, dependent: :destroy
    #for password digest
    has_secure_password

end