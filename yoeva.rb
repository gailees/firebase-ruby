# yo.rb

require 'sinatra'

get'/'do
  base_uri = 'https:/yohacks.firebaseio.com/'
 
  firebase = Firebase::Client.new(base_uri)

  response = firebase.update("todos", { :BTC1000 => 'True'})
  response.success? # => true
  response.code # => 200
  response.body # => { 'name' => "-INOQPH-aV_psbk3ZXEX" }
  response.raw_body # => '{"name":"-INOQPH-aV_psbk3ZXEX"}'

  erb :yo
end


