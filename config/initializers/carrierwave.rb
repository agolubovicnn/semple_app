if Rails.env.production?
    CarrierWave.configure do |config|
      config.root = Rails.root.join('tmp') # adding these...
      config.cache_dir = 'carrierwave' # ...two lines

      config.fog_credentials = {
        :provider               => 'AWS',                        # required
        :aws_access_key_id     => ENV['AKIAJX6AOTQHTW32UX6Q'],
        :aws_secret_access_key => ENV['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 '],
        :region                 => 'eu-central-1',                  # optional, defaults to 'us-east-1'
        :host                   => 's3.example.com',             # optional, defaults to nil
        :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
      }
      config.fog_directory  = ENV['aca76']                             # required
      config.fog_public     = false                                   # optional, defaults to true
      config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
    end
end
