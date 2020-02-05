Redmine::Plugin.register :kanban do
  name 'Kanban plugin'
  author 'Kohei Nomura'
  description 'Kanban plugin for redmine'
  version '0.0.4'
  url 'https://twitter.com/happy_se_life'
  author_url 'mailto:kohei_nom@yahoo.co.jp'
  
  # Display application common menu
  menu :application_menu, :kanban, { :controller => 'kanban', :action => 'index' }, :caption => 'かんばん', :if => Proc.new { User.current.logged? }
  
  # Display menu at project page
  menu :project_menu, :kanban, { :controller => 'kanban', :action => 'index' }, :caption => 'かんばん', :param => :project_id
  
  # Enable permission for each project
  project_module :kanban do
    permission :kanban, {:kanban => [:index]}
 end
end
