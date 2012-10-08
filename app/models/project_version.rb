class ProjectVersion
  include Singleton

  attr_reader :info

  def initialize
    commit, date = ''
    begin
      revision_info = File.read(Rails.root.join('.current-revision-info')).split(/\n/)
      commit = revision_info[0].gsub('commit ', '')
      date = revision_info[3].gsub('Date: ', '')
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
