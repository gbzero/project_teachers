class Ability < ActiveRecord::Base
	include CanCan::Ability

	def initialize(user)
		user ||= User.new
		#if user.instance_of? User
			rol = user.rol.name
			puts user 
			case user
				when 'Administrador'
					can :manage, :all
				when 'Usuario' 
					can :read, all
					can :update, Comment do |com|
						com.try(:user) == user
					end
					
			end
		#else
			# can :create, User
		#end
	end

end
