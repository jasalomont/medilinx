class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :doctors, :class_name => "MedicalRelation", :dependent => :destroy
  has_many :patient_profiles, :dependent => :destroy
  has_many :office_profiles, :dependent => :destroy
end
