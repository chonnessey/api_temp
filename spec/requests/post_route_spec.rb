require 'rails_helper'

describe "post a quote route", :type => :request do

  before do
    post '/quotes', params: { :author => 'test_author', :content => 'test_content' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['author']).to eq('test_author')
  end

  it 'returns the quote content' do
    expect(JSON.parse(response.body)['content']).to eq('test_content')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'returns an error when content is left blank' do
    post '/quotes', params: { :author => 'test_author' }
    expect(response).to have_http_status(404)
  end

  it 'returns an error when author is left blank' do
    post '/quotes', params: { :content => 'test_content' }
    expect(response).to have_http_status(404)
  end
end