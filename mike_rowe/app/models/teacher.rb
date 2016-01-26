class Teacher < ActiveRecord::Base
	has_many :groups
	has_many :students, through: :groups

  has_secure_password
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  validate :validate_password

  def validate_password
    if @secure_password_obj == ""
      errors.add(:password, "can't be blank")
    end
  end

  # def password
  #   @secure_password_obj || BCrypt::Password.new(self.hashed_password)
  # end

  # def password=(plaintext_password)
  #   @plaintext_password = plaintext_password
  #   @secure_password_obj = BCrypt::Password.create(plaintext_password)
  #   self.hashed_password = @secure_password_obj.to_s
  # end

  def self.authenticate(user, password)
    @user = User.find_by_username(user)
    puts @user
    if @user && @user.password == password
      return @user
    end
    nil
  end
  # Remember to create a migration!
end
