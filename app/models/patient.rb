# == Schema Information
#
# Table name: patients
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :patient_profile, dependent: :delete
  has_many :appointments, dependent: :delete_all
  has_many :tests, dependent: :delete_all
  has_many :medical_records, dependent: :delete_all
  has_many :medicament_authorizations, dependent: :delete_all
end
