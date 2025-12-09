# Create the admin user (safe to run multiple times)
User.find_or_create_by!(email_address: "nicola@empower.co.uk") do |user|
  user.password = "password123"
  user.password_confirmation = "password123"
  puts "✅ Admin user created: nicola@empower.co.uk"
end
