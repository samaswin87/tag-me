# Implemented: https://stackoverflow.com/a/51315426/2634405
class ViewGenerator < Rails::Generators::Base
  source_root File.expand_path('templates', __dir__)

  argument :folder, type: :string
  argument :name, type: :string

  def generate_view
    template "file.html.erb", "app/views/#{folder_name}/#{file_name}.html.erb"
  end

  private

  def folder_name
    folder.underscore
  end

  def file_name
    name.underscore
  end

  def type
    folder.titleize.singularize
  end

end
