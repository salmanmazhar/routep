class API < Grape::API
    prefix 'api'
    version 'v1', using: :header, vendor: 'routetp'
    mount Routetp::Suggest
end