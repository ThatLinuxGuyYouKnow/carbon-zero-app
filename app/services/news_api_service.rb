class NewsApiService
    include HTTParty
    base_uri 'https://newsapi.org/v2'
  
    def initialize(api_key)
      @api_key = api_key
    end
  
    def fetch_articles(country)
      response = self.class.get("/top-headlines", query: { country: country, apiKey: 8f68e932411e4e85a728efa7f43630c0 })
      articles = response.parsed_response['articles']
      articles.each do |article|
        Supabase.client.table('Articles').upsert({ country: country, articles: article })
      end
    end
  end
  