-- What are the total layoffs by company?
SELECT company, SUM(total_laid_off) 
FROM layoffs
GROUP BY company
ORDER BY SUM(total_laid_off) DESC
LIMIT 5;

-- Which industry got hit the hardest by total layoffs? 
SELECT industry, SUM(total_laid_off)
FROM layoffs
GROUP BY industry
ORDER BY SUM(total_laid_off) DESC
LIMIT 5;

-- Are layoffs getting worse over time or stabilizing?
SELECT YEAR(STR_TO_DATE(date, '%m/%d/%Y')) AS year, SUM(total_laid_off)
FROM layoffs
GROUP BY year
ORDER BY year;

-- What's the average percentage laid off per industry, and which industries consistently cut deeper?
SELECT industry, ROUND (AVG(total_laid_off), 2) AS avglaidoff
FROM layoffs
GROUP BY industry
ORDER BY avglaidoff
LIMIT 5;

-- Which companies had multiple rounds of layoffs?
SELECT company, COUNT(company)
FROM layoffs
GROUP BY company
HAVING COUNT(company) > 1
ORDER BY COUNT(company) DESC
LIMIT 5;

-- Which companies raised massive funding but still had the largest layoffs, the overhirers?
SELECT company, ROUND(SUM(funds_raised) / SUM(total_laid_off), 4) AS ratio
FROM layoffs
GROUP BY company
HAVING SUM(funds_raised) > 0 AND SUM(total_laid_off) > 0
ORDER BY ratio DESC
LIMIT 5;




