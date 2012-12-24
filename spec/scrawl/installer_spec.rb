require_relative '../spec_helper'

describe Scrawl::Installer do

  let(:installer) { Scrawl::Installer.new(FileUtils.pwd) }

  describe '#install' do

    context 'given scrawl/entries directory does not exist' do
      it 'creates scrawl/entries directory' do
        expect {
          installer.install
        }.to change { File.directory?('scrawl/entries/') }.from(false).to(true)
      end
    end

    context 'given scrawl/entries directory exists' do
      it 'does not create directories' do
        FileUtils.mkdir_p('scrawl/entries/')
        FileUtils.should_not_receive(:mkdir_p)
        installer.install
      end
    end

    it 'stores the entries directory'

  end
end
