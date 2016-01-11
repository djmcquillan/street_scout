# require 'httmultiparty'
class Vidme < ActiveRecord::Base
# include httmultiparty

def store(arg)
	HTTMultiParty.post('https://api.vid.me/video/upload', :query => {:filedata => File.new(arg)}, :headers => { 'Content-Type' => 'video/x-msvideo'}, :detect_mime_type => true)
    puts("video posted to vidme website", response)
    puts response.body
end 

end


