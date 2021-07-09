require "slack-notify"
require 'clockwork'
require 'active_support/time'

# sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/')
# sample.notify ('hello')

module Clockwork
  handler do |job|
    sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/')
    # sample.notify ("#{job}")
    sample.notify ("hello")
  end

  # every(3.seconds, '3秒毎')
  every(3.minutes, '3分毎')

end
