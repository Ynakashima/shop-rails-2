Rails.application.config.middleware.insert_before 0, "Rack:: Cors" do
  allow do
    origins 'http://fashionhound.com.s3-website-us-west-2.amazonaws.com/'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
