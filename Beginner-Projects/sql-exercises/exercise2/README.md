# Exercise 2: Subquery Practice (Beginner SQL)

This exercise contains two subquery challenges aimed at practicing filtering, basic calculations, and ordering results using SQL.

---

## 🧩 Challenge 1: Inflation and Unemployment for Republics and Monarchies (2015)

**Task:**  
Analyze inflation and unemployment rates for countries with **"Republic"** or **"Monarchy"** as their form of government in **2015**.

- Use the field `gov_form` in the `countries` table to filter for these two government types.
- Use a **subquery** to retrieve relevant country codes (`code`).
- Then, select `code`, `inflation_rate`, and `unemployment_rate` from the `economies` table.
- Order the results by `inflation_rate` (ascending).

---

## 🧩 Challenge 2: Top 10 Capital Cities by City Population Percentage

**Task:**  
Determine the **top 10 capital cities** in **Europe and the Americas** by **city_perc**, a metric that calculates the population in the city proper as a percentage of the total metro area population.

- Calculate `city_perc` as:  
  `city_proper_pop / metroarea_pop * 100`
- Only include cities that are **capitals** of countries in Europe or the Americas.
- Exclude rows where `metroarea_pop` is **NULL**.
- Sort by `city_perc` in descending order and **limit the result to 10 rows**.

---

## 🗂️ Files

- `exercise_2.sql` – SQL solutions for the two challenges above.

---

## 💡 Notes

- This exercise focuses on **subqueries**, **filtering with LIKE**, **basic arithmetic**, and **ordering results**.
- Designed for beginners looking to practice **real-world SQL scenarios**.

## 🙏 Acknowledgment

Special thanks to **DataCamp** for providing the learning resources that inspired this exercise.
