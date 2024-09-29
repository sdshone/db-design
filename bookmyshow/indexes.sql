-- Index for faster joins on foreign key columns
-- If not created automatically
CREATE INDEX idx_movie_id ON MovieShow(movie_id);
CREATE INDEX idx_show_id ON Booking(show_id);


-- Index on frequently used filtering columns
CREATE INDEX idx_movie_title ON Movie(title);
CREATE INDEX idx_show_date ON MovieShow(date);
CREATE INDEX idx_theater_name ON Theater(name);

-- Composite index for show filtering based on movie, date, and time
CREATE INDEX idx_movie_date_time ON MovieShow(movie_id, date, time);
