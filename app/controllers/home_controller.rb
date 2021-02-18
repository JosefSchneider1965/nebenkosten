class HomeController < ApplicationController
  before_action :set_user, only: [:bills]
  def index
  end

  def realestates
  end

  def bills
  end

  def download_zip
      if user_signed_in?
#        if current_user.id == 2 || current_user.id == 1
            send_file(
              "#{Rails.root}/storage/tulpenweg2/Rechnungen-2020.zip",
              filename: "Rechnungen-2020.zip",
              type: "application/zip"
              );
#        end
      end
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        if user_signed_in?
          @user = User.find(current_user.id)
        end
      end
end
