# Jukebox, Extended

We will start from an extended database schema called “ChinookDatabase” with some information about Playlists and Customers (like iTunes has).

### Map the new tables on the Database Schema

[XML](schema.xml)

### Write the SQL queries to answer these questions:

1. List all customers (name + email), ordered alphabetically (no extra information) (Should yield 59 results)

```sql
SELECT first_name, email FROM customers
ORDER BY first_name ASC
```

2. List tracks (Name + Composer) of the Classical playlist (Should yield 75 results)

```sql
SELECT tracks.name, composer FROM tracks
JOIN playlist_tracks ON playlist_tracks.track_id = tracks.id
JOIN playlists ON playlist_tracks.playlist_id = playlists.id
WHERE playlists.name = 'Classical'
```

3. List the 10 artists mostly listed in all playlists (First result should be Iron Maiden with 516 occurrences)

```sql
SELECT artists.name, COUNT(*) FROM playlist_tracks
JOIN tracks ON playlist_tracks.track_id = tracks.id
JOIN albums ON albums.id = tracks.album_id
JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY COUNT(*) DESC
LIMIT 10
```

4. List the tracks which have been purchased at least twice, ordered by number of purchases (Should yield 265 results, Steve Harris - The Trooper having 5 purchases being the top bought track)

[WHERE is for individual rows, HAVING for aggregations](https://stackoverflow.com/questions/9253244/sql-having-vs-where/9253267#9253267)

```sql
SELECT tracks.composer, tracks.name, COUNT(*) AS purchases FROM tracks
JOIN invoice_lines ON invoice_lines.track_id = tracks.id
GROUP BY tracks.id
HAVING purchases >= 2
ORDER BY purchases DESC
```


