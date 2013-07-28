module ModelsHelper
  def replace_model_link(str, project)
    return str.gsub(/@[\w]+/) do |model_name|
      model_name = model_name.sub('@','')
      "<a href=\"#{project_model_path(project, project.models.select{|t_model| t_model.name == model_name})}\">#{model_name}</a>"
    end
  end
end
