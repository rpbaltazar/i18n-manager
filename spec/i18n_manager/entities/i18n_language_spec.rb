RSpec.describe I18nLanguage, type: :entity do
  it 'can be initialized with attributes' do
    i18n_lang = I18nLanguage.new(language_name: 'Portuguese')
    expect(i18n_lang.language_name).to eq('Portuguese')
  end
end
