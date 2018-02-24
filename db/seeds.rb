# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{ password:"123456",password_confirmation:"123456",email: '1@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '2@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '3@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '4@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '5@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '6@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '7@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '8@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '9@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '10@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '11@qq.com' },
              { password:"123456",password_confirmation:"123456",email: '12@qq.com' }])
