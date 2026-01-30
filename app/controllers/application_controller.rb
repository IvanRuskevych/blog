class ApplicationController < ActionController::Base
  require "rotp"
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # variant 1
  def auth
    # session[:verified] = true
    unless session[:verified]
      input_code = params[:auth_code].to_s.strip
      # secret = "ICE2GBVAZXTNFQBUQMX2LHFCFE6H5T45"
      secret = "36K5JWLENB2KXFB4A32ADXGIIAISCWZW"
      validator = ROTP::TOTP.new(secret)

      if validator.verify(input_code)
        session[:verified] = true
      else
        render plain: "Not Authorized", code: 401
      end
    end
  end

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
end
