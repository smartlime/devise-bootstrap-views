# -*- encoding : utf-8 -*-

module DeviseBootstrapViewsHelper
  def bootstrap_devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t('errors.messages.not_saved',
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-danger alert-block">
      <button type="button" class="close" data-dismiss="alert">&times;</button>
      <h5>#{sentence}</h5>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def bootstrap_top
    html = <<-HTML
    <row><div class="col-sm-3"></div><div class="col-xs-12 col-sm-6">
    HTML

    html.html_safe
  end

  def bootstrap_bottom
    html = <<-HTML
    </div><div class="col-sm-3"></div></row>
    HTML

    html.html_safe
  end
end
