# Wrangle Data For Spotify Lab
# data are from https://github.com/rfordatascience/tidytuesday/blob/master/data/2020/2020-01-21/readme.md

# get data

spotify_songs <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-01-21/spotify_songs.csv')

# create song date variable

spotify_songs$song_date <- as.Date(spotify_songs$track_album_release_date)

# save data

save(spotify_songs, file = "./SW672/spotify-lab/spotify.RData")

write.csv(spotify_songs, file = "./SW672/spotify-lab/spotify.csv")

# library(foreign)

# write.dta(spotify_songs, file = "./SW672/spotify-lab/spotify.dta")

haven::write_dta(spotify_songs, "./SW672/spotify-lab/spotify.dta")

# load data

load("./SW672/spotify-lab/spotify.RData")

# demonstration graph

library(ggplot2) # call ggplot 

library(ggthemes) # better color palettes

ggplot(spotify_songs,
       aes(x = song_date,
           y = energy,
           color = playlist_genre)) + 
  geom_point(alpha = .1, size = 1) +
  geom_smooth() +
  scale_color_pander(name = "Genre") +
  theme_minimal() +
  labs(title = "Song Energy by Date and Genre",
       subtitle = "Spotify Data",
       x = "Date",
       y = "Spotify Measure of Song Energy")

ggsave("./SW672/spotify-lab/song-energy-by-time.png")


