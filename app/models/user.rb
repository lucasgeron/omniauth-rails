class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:google_oauth2]

         def self.from_omniauth(auth) 
      
          where(provider: auth.provider, uid: auth.uid).first_or_create do |user| 
            user.email = auth.info.email 
            user.provider = auth.provider 
            user.password = Devise.friendly_token[0, 20] 
            user.full_name = auth.info.name # assumindo que o modelo do usuário tem um nome 
            user.avatar_url = auth.info.image # assumindo o o modelo do usuário tem uma imagem 
          end 

        end


        
 
end
