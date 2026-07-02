# Tech Layoffs SQL Analysis
**Tech Layoffs SQL Analysis** is a data analysis project that explores global tech layoffs using SQL. The project investigates which companies and industries were hit hardest, how layoffs trended over time, which companies went through multiple rounds of cuts, and which overhired relative to their funding.

---
## Features
- **Top Companies by Layoffs:** Identifies the five companies with the highest total headcount reductions.
- **Hardest-Hit Industries:** Ranks industries by total layoffs to reveal which sectors bore the most cuts.
- **Layoffs Over Time:** Tracks total layoffs by year to show whether the trend was worsening or stabilizing.
- **Average Layoffs by Industry:** Compares average layoff size per industry to surface which sectors cut deepest on a per-event basis.
- **Multiple Rounds:** Flags companies that conducted repeated rounds of layoffs, signaling sustained distress.
- **Overhirers:** Calculates a funding-to-layoff ratio to identify companies that raised the most capital relative to how many people they cut.

---
## Tech Stack
![MySQL](https://img.shields.io/badge/MySQL-%234479A1?style=for-the-badge&logo=mysql&logoColor=white)

---
## Usage
1. Clone the repository: `git clone https://github.com/rayyanusmanii/layoffs-sql-analysis.git`
2. Import the dataset into your MySQL environment
3. Open `layoffs.sql` and run each query individually in MySQL Workbench or your preferred SQL client
