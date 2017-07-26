require 'rubygems'
require 'bundler/setup'
require 'page-object/page_factory'
require_relative 'PageObjects/quick_scores_login'
Bundler.require 
# World(PageObject::PageFactory)

@browser = Watir::Browser.new :firefox

@browser.goto("https://www.quickscores.com/Orgs/Login.php?OrgDir=crpdsports")
on_page(QuickScoresLogin).login_to_quick_scores('danh4708@gmail.com', 'Timby4708')

