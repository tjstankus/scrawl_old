require_relative '../spec_helper'

describe Scrawl::Installer do
  describe '.install' do
    context 'given scrawl/entries directories do not exist' do
      it 'creates scrawl/entries/ directories' do
        expect {
          Scrawl::Installer.install
        }.to change { File.directory?('scrawl/entries/') }.from(false).to(true)
      end
    end

    context 'given scrawl/entries directories exist' do
      it 'does not create directories' do
        FileUtils.mkdir_p('scrawl/entries/')
        FileUtils.should_not_receive(:mkdir_p)
        Scrawl::Installer.install
      end
    end
  end
end