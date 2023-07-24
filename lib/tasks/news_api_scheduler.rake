task :fetch_news_articles => :environment do
    api_key = '8f68e932411e4e85a728efa7f43630c0'
    countries = ["us", "cn", "in", "br", "id", "pk", "ng", "bd", "ru", "jp", "mx", "ph", "vn", "eg", "de", "ir", "tr", "gb", "fr", "it", "za", "kr", "es", "ar", "ca", "au", "co", "my", "th", "sa", "pe", "nl", "cl", "se", "be", "ch", "pt", "pl", "sg", "hk", "dk", "fi", "no", "ie", "at", "nz", "gr", "il", "cz", "ro", "ke", "ma", "et", "dz", "gh", "tz", "ci"]
    news_api_service = NewsApiService.new(api_key)
    countries.each do |country|
      news_api_service.fetch_articles(country)
    end
  end
  