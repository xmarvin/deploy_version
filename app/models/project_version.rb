class ProjectVersion
  include Singleton

  attr_reader :info
  
  REVISION_FILE_NAME = 'REVISION'

  def initialize
    commit, date = ''
    begin
      path = Rails.root.join(REVISION_FILE_NAME)
      commit = File.read(path)   
      date = File.mtime(path)
    rescue
    end 
    db_version = ActiveRecord::Base.connection.select_all 'SELECT version FROM schema_migrations ORDER BY version DESC LIMIT 1'
    @info  = {
        :commit => commit,
        :date => date,
        :db_version => db_version.first['version']
    }
  end

end
