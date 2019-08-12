class AuthorizeUserService
	def initialize(headers = {})
		@headers = headers
	end

	def authorize
		user
	end

	private

	def user
		@user ||= User.find(decoded_auth_token[:user_id]) if decoded_auth_token
	  @user || nil
	end

	def decoded_auth_token
		@decoded_auth_token ||= JsonWebToken.new().decode(http_auth_header)
	end

	def http_auth_header
		if @headers['Authorization'].present?
			return @headers['Authorization'].split(' ').last
		else
			nil
		end
	end
end
