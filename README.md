# Web scraping of products and reviews from 2 sources (Sephora and Strawberrynet) for the following skincare categories:

Skin care categories:

● Eye & lip
● Cleansers
● Masks
● Moisturizers / Treatments
● Sun Care

Steps:

1. Scrape all the product urls from the category page
2. Scrape all the product details from the product urls
3. Store raw data from scraped URLs into MongoDB
4. Retrieve data from MongoDB and transform the data using panda dataframes
5. Load the transformations back into MySQL
6. Create views in MySQL for both sites to look at
• Top 100 products by ratings
• Top 10 brands by ratings
