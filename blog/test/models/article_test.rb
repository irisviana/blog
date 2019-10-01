require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'deve salvar novo artigo valido' do
    article = Article.new title: 'novo artigo ruby', text: 'amo ruby'
    assert article.save
  end
end
