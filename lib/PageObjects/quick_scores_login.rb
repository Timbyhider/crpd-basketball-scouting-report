
def QuickScoresLogin
    include 'PageObject'

    page_url = "https://www.quickscores.com/Orgs/Login.php?OrgDir=crpdsports"

    button(:submit, :id => 'Submit', :value => 'Submit')

    text_field(:username, :id => 'username')
    text_field(:password, :id => 'EnteredPassword')

    def login_to_quick_scores(user, pass)
        self.username = user
        self.password = pass
        self.submit
    end


end