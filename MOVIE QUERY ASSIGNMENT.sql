use movie;

select mov_title, mov_year FROM movie;

SELECT mov_year from movie where mov_title = 'AMERICA BUEATY';

select mov_title from movie where mov_year in ('1999');

select mov_title from movie where mov_year < 1998;

select re.rev_name, mo.mov_title from reviewer as re join movie as mo order by rev_name;

select rev_name from reviewer where rev_id in  (select rev_id from movie_rating where num_o_ratings > 7);

select mov_title from movie where movieid in(select movieid from movie_rating where num_o_ratings is null);

select rev_name from reviewer where rev_id in (select rev_id from movie_rating where num_o_ratings is null);

select dir_frame, dir_iname from director where dir_id in	
(select dir_id
    from movie_direction
    where movieid in 
		(select movieid
        from movie 
        where mov_title = 'Eye Wide Shut'));
 
