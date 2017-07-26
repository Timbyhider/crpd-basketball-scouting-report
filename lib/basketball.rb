require 'rubygems'
require 'bundler/setup'
require 'page-object'
require 'page-object/page_factory'
require_relative 'PageObjects/quick_scores_login.rb'
require_relative 'PageObjects/quick_scores_dashboard'

Bundler.require 

@browser = Watir::Browser.new :firefox
qcl = QuickScoresLogin.new(@browser)

@browser.goto("https://www.quickscores.com/Orgs/Login.php?OrgDir=crpdsports")
qcl.login_to_quick_scores('danh4708@gmail.com', 'Timby4708')

qcd = QuickScoresDashboard.new(@browser)
puts qcd.retrieve_upcoming_game_info 

