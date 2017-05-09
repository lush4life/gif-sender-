require 'giphy'
require 'json'
require 'twilio-ruby'

account_sid = 'ACaa0a2ceb8411bb4aa9348dc3d00558f0' 
auth_token = '373c5b9d1d7c5bd7a9dc2cce087b0dcd'

# random_gif = Giphy.random("dog")

@client = Twilio::REST::Client.new account_sid, auth_token 
 @client.account.messages.create({ 
    :to => '+14809937339',
    :body => 'hi hi', 
    # :media_url => random_gif.image_original_url,
    :from => "+19283251586"
    })