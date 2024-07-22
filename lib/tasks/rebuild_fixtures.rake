namespace :db do
  task :rebuild => :environment do
    puts "===== rebuilding database with fixtures ====="
    system "rails db:drop db:create db:schema:load db:fixtures:load"
    puts "==== database rebuilt ====="
  end
end
