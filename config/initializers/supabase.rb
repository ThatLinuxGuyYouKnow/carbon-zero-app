require 'supabase'
client = SupaClient.new(
  url: 'https://qybqhxiaptuiqsvkaand.supabase.co',
  headers: { api_key: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF5YnFoeGlhcHR1aXFzdmthYW5kIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NTg4NTMzNSwiZXhwIjoyMDAxNDYxMzM1fQ.CFVs4mV5KdMjTbRHvVoqAHWjYJA9CYe3a3XXKM4umZQ' },
)
client = Supabase.client
articles_table = client.from('articles')
articles_table.insert([{ title: 'Article 1' }, { title: 'Article 2' }])
