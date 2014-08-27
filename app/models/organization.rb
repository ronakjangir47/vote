class Organization < Voter
  has_and_belongs_to_many :users
  has_many :delegations
  has_many :delegation_entries, as: :delegate

  validates :name, presence: true

  acts_as_tagger
  acts_as_voter

  def display
    name
  end
end
