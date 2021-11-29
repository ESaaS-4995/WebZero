require_relative "functions/web_resume/bundle_helper.rb"
require_relative "functions/web_resume/resume_helper.rb"
require_relative "functions/web_resume/deploy_helper.rb"
require_relative "functions/web_resume/override_helper.rb"


module ApplicationHelper
  def generate(path, unique_id)
    # path = "./OmkarResume.pdf"
    # if current_user
    #   puts "#{current_user.resume}"
    # end
    puts path
    puts unique_id
    unique_id = unique_id[0..unique_id.index('@')-1]
    puts unique_id
    if path == nil
      return
    end
    if current_user.website.nil?

      resume_str = Functions::WebResume::ResumeHelper::get_resume_js(path)
      template_path = 'app/helpers/functions/web_resume/template_0'
      resume_relative_path = 'js'
      dest_path = 'app/helpers/functions/web_resume/output_local_' + unique_id
      local_path = Functions::WebResume::BundleHelper::bundle_to_local(template_path, resume_str, resume_relative_path, dest_path)
      ret = Functions::WebResume::DeployHelper::upload_to_s3(local_path, '', unique_id)
      current_user.website = ret 
      current_user.save
    end
    puts "============================================"
    puts current_user.website
    return current_user.website

  end

  def load_resume_fields(resume_js_path, template_root_path)
    hmap = get_template_fields(resume_js_path, template_root_path)
    return hmap
  end
  end
# end
