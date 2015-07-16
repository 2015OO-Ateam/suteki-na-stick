class User < ActiveRecord::Base
  belongs_to :resource

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :authentication_keys => [:login]
         #以下ログイン関係
      attr_accessor :login
      def self.find_first_by_auth_conditions(warden_conditions)
      conditions = warden_conditions.dup
      if login = conditions.delete(:login)
        where(conditions).where(["lower(student_number) = :value OR lower(email) = :value", { :value => login.downcase }]).first
      else
        where(conditions).first
      end
    end
    def email_required?
       false
    end
    #ここまでログイン関係
    #以下enumで０が管理者、１が利用者
    enum status: %i(manager user)
end
