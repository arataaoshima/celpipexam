if Rails.env.production?

    CarrierWave.configure do |config|
    config.fog_provider = 'fog'
    
        config.fog_credentials = {
        
            :provider => 'AWS',
            
            :aws_access_key_id => ENV['S3_ACCESS_KEY'],
            
            :aws_secret_access_key => ENV['S3_SECRET_KEY'],
            
            :region => ENV['AWS_REGION']
        
        }
        
        config.fog_directory = ENV['S3_BUCKET']
        
        #storage = Fog::Storage.new(credentials.merge({:region => DEFAULT_REGION}))
    end

end