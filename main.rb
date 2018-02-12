require 'dotenv'
require 'slack-ruby-client'
require 'pry-byebug'

Dotenv.load

Dir[File.join(__dir__, 'lib/*.rb')].each(&method(:require))

Slack.configure do |config|
  config.token = ENV['SLACK_TOKEN']
end

client = Slack::RealTime::Client.new

client.on :hello do
  puts 'Successfully connected to Slack.'
end

client.on :message do |data|
  if data['text'] && data['text'] != ''
    puts "Got message: #{data['text']}"

    # Remove quotation from the message
    message = data['text'].gsub(/`+[^`]+`+/m,'')

    Polly.instance.speech(message)
  end
end

client.start!
