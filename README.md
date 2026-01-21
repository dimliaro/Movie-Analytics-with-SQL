"Exploratory data analysis on IMDb movies using SQLite and SQL queries inside Jupyter Notebook."

# 🎬 Movie Analytics with SQL (TMDB Dataset)

This project is an exploratory data analysis on movie data using **SQL inside Jupyter Notebook**.  
The goal is to demonstrate practical SQL skills, data cleaning, and analytical thinking using a real-world dataset.

## 📌 Project Overview

Using the **TMDB Movie Dataset**, this project explores questions such as:
- Which movies are the highest rated?
- Which movies are the most popular?
- Which languages produce the most movies?
- Which movies are the most profitable?
- What are examples of box office flops or hidden gems?

The project is designed as a **portfolio project** showcasing SQL and data analysis skills.

---

## 🧰 Tools & Technologies

- Python  
- pandas  
- SQLite  
- SQL  
- Jupyter Notebook  
- Git & GitHub  

---

## 📂 Project Structure
MovieAnalytics/
│
├── data/
│ └── TMDB_movie_dataset_v11.csv
│
├── notebooks/
│ └── movie_sql_analysis.ipynb
│
├── queries.sql
│
└── README.md


- `notebooks/`: contains the analysis and SQL execution  
- `queries.sql`: contains a curated collection of SQL queries  
- `data/`: contains the dataset  
- `README.md`: project documentation  

---

## 📊 Dataset

The dataset used is the **TMDB Movie Dataset**, which includes information such as:

- Title  
- Release date  
- Genres  
- Original language  
- Popularity  
- Vote average & vote count  
- Budget & revenue  
- Runtime  

Zero values in financial columns (e.g. budget, revenue) were treated as **missing data** and excluded from aggregations to avoid misleading results.

---

## 🧠 Example Questions Answered

Some examples of the SQL analysis included:

 - Top 10 highest rated movies (with minimum vote threshold)  
 - Most popular movies  
 - Average rating per language  
 - Number of movies per day
 - Most profitable movies
 - Most common genres 
 - Biggest box office flops  
 - Movies with high budget but low ratings  
 - Hidden gems (high rating, low popularity)  
 - Best revenue-to-budget ratio  

All queries can be found in the `queries.sql` file.

---

## 🚀 How to Run the Project

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/movie-sql-project.git
   cd movie-sql-project
2. Install dependencies:
   ```bash
   pip install pandas

3. Launch Jupyter Notebook:
   ```bash
   jupyter notebook

4. Open:
   ```bash
   notebooks/movie_sql_analysis.ipynb


