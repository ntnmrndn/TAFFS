class Md5Controller < ApplicationController
  def sum
    md5 = Digest::MD5.hexdigest request.body.read
    render :json => {
             :md5 => md5
           }
  end
end
