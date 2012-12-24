require_relative '../spec_helper'

describe Scrawl::Compiler do
  let(:markdown_files) {
    [
      "#{FIXTURES_PATH}/entries/2012/12/22/1337.markdown",
      "#{FIXTURES_PATH}/entries/2012/12/23/1203.markdown"
    ]
  }

  let(:entries_dir) { File.expand_path(File.join(FIXTURES_PATH, 'entries')) }

  let!(:compiler) { Scrawl::Compiler.new(entries_dir) }

  context 'given an invalid directory' do
    it 'raises an error'
  end

  it 'has an entries directory' do
    expect(compiler.dir).to eq(entries_dir)
  end

  # TODO: training wheels
  it 'collects files given an entries directory' do
    markdown_files.each do |md_file|
      expect(compiler.files).to include(md_file)
    end
  end

  it 'only considers markdown files'

  it 'only selects modified files to be compiled'
    # files_to_compile
    # based on last compile timestamp

  it 'opens files in read-only mode'

  # ? it 'creates an entry from file content'

end
