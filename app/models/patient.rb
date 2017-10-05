class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :doctors, :class_name => "MedicalRelation", :dependent => :destroy
  
  has_many :office_profiles, :dependent => :destroy
  has_many :events, :dependent => :destroy
  has_many :claims, :dependent => :destroy
  has_one :pathological, :dependent => :destroy
  has_one :non_pathological, :dependent => :destroy
  has_one :pregnancy, :dependent => :destroy
  has_one :other_background, :dependent => :destroy
  has_one :surgical, :dependent => :destroy

end
