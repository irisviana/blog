require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test 'deve salvar novo artigo valido' do
    article = Article.new title: 'novo artigo ruby', text: 'amo ruby'
    assert article.save
  end
  test 'deve remover artigo existente ' do
    article = Article.new title: 'novo artigo java', text: 'amo java'
    assert article.save
    assert article.destroy
  end
end
