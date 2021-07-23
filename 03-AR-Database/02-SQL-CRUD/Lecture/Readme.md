# CRUD with SQL

### Create

```sql
INSERT INTO doctors (first_name, last_name, specialty)
VALUES ('Arthur', 'House', 'Dentist');
```

### Update

```sql
UPDATE doctors 
SET specialty = 'Generalist', first_name = 'Gregory' 
WHERE id = 10;
```

### Delete