class User < ActiveRecord::Base
    has_many :experiments, dependent: :destroy

    # downcase email for db
    #before_save { self.email = email.downcase }
    #before_create :create_remember_token    

    # name validation
    validates :name,  presence: true, length: { maximum: 50 }

    # email validation
    #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    #validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }

    #has_secure_password

    # password validation
    #validates :password, length: { minimum: 6}
    
    def User.new_remember_token
        SecureRandom.urlsafe_base64
    end

    def User.digest(token)
        Digest::SHA1.hexdigest(token.to_s)
    end

    private
        def create_remember_token
            self.remember_token = User.digest(User.new_remember_token)
        end
end
