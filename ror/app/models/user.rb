class User < ApplicationRecord
    validates :uname, presence: true
    validates :uemail, presence: true
    validates :ulogin, presence: true
    validates :upassword, presence: true
    validates :ucity, presence: true
    #has_secure_password
end
