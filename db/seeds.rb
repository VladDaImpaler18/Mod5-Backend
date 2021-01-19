# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Scenario 1: Income Statement net-0
u = User.create(:name => "Even Steven", :email => "startAt0@protonmail.com");
#WishlistItem(id: integer, uuid: uuid, name: text, description: text, price: money, url: text,
#             priority: integer, user_id: integer, created_at: datetime, updated_at: datetime) 

w1 = u.WishlistItems.build(
    :name => "Big Screen TV",
    :description => "A TV with an overly sized screen composed entirely of tiny tiny pixels.",
    :price => 2999.99,
    :url => "https://OnlineStore.com/TVs/theGoodOne.html",
    :priority => 7
)


u = User.create(:name => "Debby Debts", :email => "inTheRED@hotmail.com");

u = User.create(:name => "Jimmy Cash-Money", :email => "StartAhead@MonkeyMail.com");