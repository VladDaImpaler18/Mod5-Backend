# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#<User name: nil, email: nil>

#<WishlistItem name: nil, description: nil, price: nil, url: nil,
#              priority: nil, user_id: nil>

#<BudgetItem name: nil, description: nil, amount: nil, recurring: nil
#            expirationDate: nil, user_id: nil, wishlist_item_id: nil> 
#If recurring is 'true' and expirationDate is nil, this has indefinite end date
#If recurring is 'false' the expirationDate is sameday, or whatever to only show this 1 time for the week

#Scenario 1: Income Statement net-0
# User has 2 items in wish list, Scooter is higher priority; Money in == Money out
u = User.create(:name => "Even Steven", :email => "startAt0@protonmail.com");


w1 = u.WishlistItems.build(
    :name => "Big Screen TV",
    :description => "A TV with an overly sized screen composed entirely of tiny tiny pixels.",
    :price => 2999.99,
    :url => "https://OnlineStore.com/TVs/theGoodOne.html",
    :priority => 3
);
w1.save;

w2 = u.WishlistItems.build(
    :name => "Super Cool Scooter",
    :description => "A scooter that is unironically cool!",
    :price => 299.50,
    :url => "https://OnlineStore.com/Ironic/SCS.html",
    :priority => 5
);
w2.save;

# User has a Profit & Loss Statement of net 0.
credit1 = u.BudgetItems.build(
    :name => "Salary",
    :description => "Paid on Bi-weekly basis. Taxes accounted for. Recurring until employment change. Amount has been adjusted to reflect rate of pay for ${Week, Month, YTD}",
    :amount => 1521,
    :recurring => true,
    :expirationDate => 2030-05-29
);
credit1.save;

debt1 = u.BudgetItems.build(
    :name => "Student Loans",
    :description => "Student Loans. Collects at the end of the month. Amount has been adjusted to reflect timespan.",
    :amount => -1521,
    :recurring => true,
    :expirationDate => 2053-01-06
);
debt1.save;
#BudgetItems not saving. Probably due to WishlistItem FK


#Scenario 2: Income Statement in debt
# User has one item in wishlist; Money out > Money in
u = User.create(:name => "Debby Debts", :email => "inTheRED@hotmail.com");
w1 = u.WishlistItems.build(
    :name => "Awesome Vacation to Disney Land",
    :description => "Vacation!!! Weeee. Price includes airfare and hotel stay for 2",
    :price => 5300.00,
    :url => "https://www.Disney.com/Vacation/Lets_GO!",
    :priority => 6
);
w1.save;

# User has a Profit & Loss Statement in the negatives.
credit1 = u.BudgetItems.build(
    :name => "Salary",
    :description => "Paid on Bi-weekly basis. Taxes accounted for. Recurring until employment change. Amount has been adjusted to reflect rate of pay for ${Week, Month, YTD}",
    :amount => 1521,
    :recurring => true,
    :expirationDate => 2053-01-06
);
credit1.save;

credit2 = u.BudgetItems.build(
    :name => "Child Support",
    :description => "",
    :amount => 500,
    :recurring => true,
    :expirationDate => 2031-06-11
);
credit2.save;

debt1 = u.BudgetItems.build(
    :name => "Mortgage Loans",
    :description => "House Payments. Collects at the end of the month. Amount has been adjusted to reflect timespan.",
    :amount => -3000,
    :recurring => true,
    :expirationDate => 2053-01-06
);
debt1.save;

#Scenario 3: Income Statement in the green
u = User.create(:name => "Jimmy Cash-Money", :email => "StartAhead@MonkeyMail.com");



