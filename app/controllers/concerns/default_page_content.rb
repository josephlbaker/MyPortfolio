module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Joseph Baker | Portfolio"
    @seo_keywords = "Joseph Baker portfolio"
  end
end
