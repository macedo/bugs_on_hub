require 'octokit'

module BugsOnHub
  class << self
    def configure(&block)
      yield Config
    end
  end

  module Config    
    class << self
      attr_accessor :login
      attr_accessor :pass
      attr_accessor :repo      
    end
  end

  module Issue
    class << self
      def create(title, body)
        github = Octokit::Client.new(:login => Config.login, :password => Config.pass)
        github.create_issue(Config.repo, title, body)
      end
    end
  end
end