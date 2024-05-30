class Product < ApplicationRecord
  include AlgoliaSearch
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 10 }
  validates :price, numericality: { only_integer: true }

  algoliasearch do
    attributes :title, :content, :label, :price # 登録したいカラム
    searchableAttributes ['label', 'title', 'content']
    attributesForFaceting [:label]
  end
end
