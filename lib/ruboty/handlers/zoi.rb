require 'json'

module Ruboty
  module Handlers
    class Zoi < Base
      on /zoi/, name: "zoi", description: "ganbaru zoi"

      def zoi(message)
        url = items.sample['image'].gsub(/:large$/, '')
        message.reply(url)
      end

      private
      def items
        @items ||= JSON.parse(File.read(File.dirname(__FILE__) + '/data.json'))['items']
      end

    end
  end
end
