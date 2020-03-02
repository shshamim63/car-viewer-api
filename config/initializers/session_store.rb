if Rails.env.production?
  Rails.application.config.session_store :cookie_store, key: "_car_viewer", domain: "car-viewer-api.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_car_viewer"
end