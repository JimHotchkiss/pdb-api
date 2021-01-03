Rails.application.config.middleware.insert_before 0, Rack::Cors do 
# Local host - development
    allow do 
        origins "http://localhost:3000"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end 
# Production
    allow do 
        origins "http://pdb-backend-app.herokuapp.com"
        resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end 
end 