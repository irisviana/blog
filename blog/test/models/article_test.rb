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
  test 'nao deve criar artigo com titulo em branco ' do
    article = Article.new title: '', text: 'primeiro artigo'
    assert_not article.save
  end

end
