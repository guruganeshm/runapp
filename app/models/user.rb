class User < ActiveRecord::Base
validates_presence_of :username, :email, :saalt, :password_hash
validates_uniqueness_of :email


def self.create_with_password(username, email, password)
	saalt = SecureRandom.hex
	password_hash = self.generate_hash(password, saalt)
	self.create(
	 username: username,
		email: email,
		 saalt: saalt,
password_hash: password_hash)
end

 def verify_password(password)
 	self.password_hash == User.generate_hash(password, self.saalt)
 	
 end

def self.generate_hash(password, saalt)

	digest = OpenSSL::Digest::SHA256.new
	digest.update(password)
	digest.update(saalt)
	digest.to_s
	
end

end
