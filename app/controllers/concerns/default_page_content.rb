module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'DevcampPortfolio'
    @seo_keywords = "Tagir Akhmadeev portfolio"
  end
end
