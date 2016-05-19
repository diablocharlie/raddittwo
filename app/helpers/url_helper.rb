module UrlHelper
  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}" 
  end 

  def root_source_url(url)
    newUrl = URI.parse(url).host
    stringUrl = newUrl.to_s
    stringUrl.sub(/^https?\:\/\//, '').sub(/^www./,'') 
  end 


end 
