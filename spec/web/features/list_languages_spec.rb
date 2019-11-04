require 'features_helper'

RSpec.describe 'List Languages' do
  let(:repository) { I18nLanguageRepository.new }

  before do
    repository.clear
    repository.create(language_name: 'Portuguese')
    repository.create(language_name: 'Spanish')
  end

  it 'displays each language on the page' do
    visit '/i18n_langs'

    within '#i18n_langs' do
      expect(page).to have_css('.i18n_lang', count: 2), 'Expected to find 2 books'
    end
  end
end
