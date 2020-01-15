class ProfilesController < InheritedResources::Base
  before_action :authenticate_user!, except:  []
  def edit
    @profile = Profile.find_or_create_by(id: current_user.id, user_id: current_user.id)
  end
  private

    def profile_params
      params.require(:profile).permit(:user_id, :name, :image, :belong_to, :message, :description, :twitter, :facebook, :web, :github, :place)
    end

end
