class Release < ActiveHash::Base
  self.data = [
    { id: 1, name: '公　開' },
    { id: 2, name: '非公開' }
  ]

  include ActiveHash::Associations
  has_many :contents

end
