user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

City.create(name: 'New York', short_name: 'NY')
City.create(name: 'Berlin', short_name: 'BL')
City.create(name: 'San Francisco', short_name: 'SF')
City.create(name: 'Kiev', short_name: 'KV')
City.create(name: 'Singapore', short_name: 'SG')
