require_relative '../spec_helper'

describe Pugin::Engine do
  describe 'asset pipeline integration', type: :feature do
    it 'exposes a compiled pugin/pugin.js file' do
      visit 'assets/pugin/pugin.js'

      expect(page.text).to include('var pugin = {};')
    end

    it 'exposes a compiled pugin/pugin.css file' do
      visit 'assets/pugin/pugin.css'

      expect(page.text).to include('body#pugin { background-color: #ccc; }')
    end
  end
end
