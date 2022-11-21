require_relative './app'
require_relative './menu'

def main
  menu = Menu.new
  app = App.new
  puts "\nWelcome School Library of Waris!\n\n"
  menu.display_menu(app)
end
main
