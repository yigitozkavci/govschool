class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Searchkick Configuration                                                    {{{
  # -------------------------------------------------------------------------------
  searchkick autocomplete: ['full_name']

  def search_data
    as_json.merge(
      {
        'full_name' => full_name
      }
    )
  end

  # }}}

  def full_name
    "#{first_name} #{last_name}"
  end

end
