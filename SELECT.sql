
select album_name, album_release_year from albums
	where album_release_year >= '20180101' and album_release_year <= '20190101';
	
select track_name, track_duration from tracks
	order by track_duration desc
	limit 1;

select track_name, track_duration from tracks
	where track_duration >= '00:03:30';
	
select collection_title, collection_date from compilation_albums
	where collection_date >= '20180101' and collection_date <= '20201231';
	
select id_artist, artist_name from artist
	where artist_name not like '%% %%';
	
select track_name from tracks
	where track_name like '%%my%%';
	
select track_name from tracks
	where track_name like '%%My%%';
	
select track_name from tracks
	where track_name like '%%мой%%';
