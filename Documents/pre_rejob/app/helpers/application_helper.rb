module ApplicationHelper
  def job_image_tag(job, options = {})
    if job.image.present?
      path = job_path(job, format: job.image.extension)
      link_to(image_tag(path, { alt: job.title }.merge(options)), path)
    else
      ""
    end
  end
end
