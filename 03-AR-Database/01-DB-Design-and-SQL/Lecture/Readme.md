# Relational Database & SQL

### Gsheet with data

(Gsheet with data)[https://docs.google.com/spreadsheets/d/1djPZfE53v0wZdbQTbxnA0xbUoH_tSwXesOhU6ZDkdbY/edit#gid=1693812373]

### For Opening the database

```sh
sqlite3 db.sqlite
```

Don't forget to end your request with `;`

### Join with renaming column

```sql
SELECT c.created_at, p.first_name AS p_first_name, p.last_name, d.first_name, d.last_name
FROM consultations c
JOIN patients p ON c.patient_id = p.id
JOIN doctors d ON c.doctor_id = d.id;
```
