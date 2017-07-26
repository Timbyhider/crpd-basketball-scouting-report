require 'page-object'

class QuickScoresLogin
    include PageObject

    page_url = "https://www.quickscores.com/Orgs/Login.php?OrgDir=crpdsports"

    button(:submit, :name => 'Submit', :value => 'Submit')

    text_field(:username, :id => 'username')
    text_field(:password, :name => 'EnteredPassword')

    def login_to_quick_scores(user, pass)
        self.username = user
        self.password = pass
        self.submit
    end
end