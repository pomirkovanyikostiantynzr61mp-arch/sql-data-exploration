import pandas as pd

# Завантаження даних (перевірте, чи файл дійсно називається 'supermarket_sales.csv')
df = pd.read_csv('supermarket_sales.csv')

print("=== Перші 5 рядків датасету ===")
print(df.head())

print("\n=== Інформація про колонки та типи даних ===")
print(df.info())

print("\n=== Кількість порожніх значень у кожній колонці ===")
print(df.isnull().sum())

# Бізнес-аналітика: використовуємо ваші назви 'product_line' та 'revenue'
sales_by_category = df.groupby('product_line')['revenue'].sum().reset_index()
sales_by_category = sales_by_category.sort_values(by='revenue', ascending=False)

print("\n=== Дохід за категоріями товарів ===")
print(sales_by_category)

# Експорт результатів у новий звіт
sales_by_category.to_csv('category_report.csv', index=False)
print("\nЗвіт успішно збережено у файл 'category_report.csv'")
