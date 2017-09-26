class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :patients, :class_name => "MedicalRelation", :dependent => :destroy
  has_many :office_profiles, :dependent => :destroy
  has_one :credential
  has_many :non_pathologicals

end
