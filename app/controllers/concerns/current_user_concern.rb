module CurrentUserConcern
	extend ActiveSupport::Concern

	def current_user
		super || guest_user
	end

	def guest_user
		guest = GuestUser.new
		guest.name = "Guest"
		guest.first_name = "first name"
		guest.last_name = "last name"
		guest.email = "email@email.com"
		guest
	end
end