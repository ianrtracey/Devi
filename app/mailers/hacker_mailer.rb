class HackerMailer < ApplicationMailer
	default from: "team@hackarizona.org"

	def acceptance_email(hacker)
		@hacker = hacker
		mail(to: @hacker.email, subject: "You're In!")
	end

	def rejection_email(hacker)
		@hacker = hacker
		mail(to: @hacker.email, subject: "You're Rejected!")
	end
end
