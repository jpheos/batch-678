SELECT artists.name, COUNT(*) FROM playlist_tracks
JOIN tracks ON playlist_tracks.track_id = tracks.id
JOIN albums ON albums.id = tracks.album_id
JOIN artists ON albums.artist_id = artists.id
GROUP BY artists.name
ORDER BY COUNT(*) DESC
LIMIT 10