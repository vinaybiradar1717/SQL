-- COUNT, ORDER BY, GROUP BY
=======================================
select region, count(*) as total_countries 
    from country 
    group by region
    order by total_countries desc;


select a.title as Album, count(t.track_number) as Tracks
    from track as t
    join album as a
        on a.id = t.album_id
    group by a.id
    order by tracks desc, album;


select a.title as Album, count(t.track_number) as Tracks
    from track as t
    join album as a
        on a.id = t.album_id
    group by a.id
    having tracks >= 10
    order by tracks desc, album;


select a.title as Album, count(t.track_number) as Tracks
    from track as t
    join album as a
        on a.id = t.album_id
    where a.artist = 'Jimi Hendrix'
    group by a.id
    having tracks > 5
    order by tracks desc, album;


-- MIN MAX AVG
=======================================
select * from country;
select region, population from country order by region;
select region, avg(population) from country group by region order by region desc;
select region, sum(population) from country group by region order by population;
select region, min(population) as Min_Population, max(population) as Max_Population from country group by region;