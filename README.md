# Market-Research-Survey-Insights
SQL + Power BI analysis of Market Research Survey Insights

# Market-Research-Survey-Insights Dashboard 

## Business Problem
What drives customer satisfaction and loyalty across product lines and support channels, and where should the business prioritize investment to improve retention?

## Approach
- Designed a 600-respondent simulated customer survey dataset modeled on realistic market-research banner structures (Age, Gender, Region, ProductLine, SatisfactionScore, NPS_Response, TechSupportUsed)
- Loaded the dataset into MySQL and wrote SQL queries to calculate NPS, CSAT, and average satisfaction segmented by tech support usage, product line, and region
- Built a Power BI dashboard to visualize the results with an interactive product line filter
- Translated findings into a support-investment recommendation

## Key Insight
Overall NPS is -16.3 and CSAT is 46.5%, but this masks a major split: customers who used tech support report an NPS of +15.7 and average satisfaction of 3.93/5, versus -35.3 NPS and 3.11/5 satisfaction for those who didn't — a 51-point NPS swing. Broadband is the weakest product line at 36.2% CSAT, well behind the top-performing DTH/Streaming Bundle at 54.4%. Regional differences are comparatively minor (East highest at 3.57, South lowest at 3.29).

## Recommendation
Prioritize expanding tech support access and proactive outreach, since it shows the single largest measured impact on both satisfaction and loyalty. Focus this investment first on Broadband customers, the weakest-performing product line, where the tech-support effect is likely to yield the largest loyalty gain.

## Tools Used
SQL (MySQL Workbench), Power BI Desktop

## Dashboard Preview

<img width="1145" height="648" alt="Dashboard - screenshot" src="https://github.com/user-attachments/assets/b08414e4-a377-42e3-ad17-8247e15cc6ad" />

## Dataset Source
Simulated dataset (600 responses), designed to reflect realistic market-research survey structures based on professional banner/cross-tab reporting experience. Disclosed here as synthetic, not collected from real respondents.



