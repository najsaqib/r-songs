library(dplyr)
library(audio)
library(stringr)
# American Jesus by Bad Religion
# Sheet music link here: http://musicnoteslib.com/tabs/Bad_Religion-American_Jesus-4294955948.html

notes <- c(A = 0, "A#" = 1, B = 2, C = 3, "C#" = 4, D = 5, "D#" = 6, E = 7, F = 8, "F#" = 9, G = 10, "G#" = 11)

# Guitar intro
pitch1 <- "A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C E E E A"

octave1 <- c(3,3,3,4,3,4,4,4,3,4,
             3,3,3,3,3,4,3,4,4,4,
             3,4,3,3,3,3,3,4,3,4,
             4,4,3,4,3,3,3,3,3,4,
             3,4,4,4,3,4,3,3,3,3,
             3,4,3,4,4,4,3,4,3,3,
             3,3,3,4,3,4,4,4,4,3)

duration1 <- c(0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,1.00,1.00,1.00,1.00)


verse_1 <- data_frame(pitch = strsplit(pitch1, " ")[[1]],
                       duration = duration1,
                       octave = octave1)

# Vocal 1
pitch2 <- "r E E E E E E D E E C A r A B C C C C D B G r E E E E E E D E E C A r A B C C C C D D E D r E E E E E E G E D D E r A B C C C C D B G r E E E E E E E E E E E E C A C E"

octave2 <- c(4,4,4,4,4,4,4,4,4,4,4,3,
             4,3,3,4,4,4,4,4,3,3,
             4,4,4,4,4,4,4,4,4,4,4,3,
             4,3,3,4,4,4,4,4,4,4,4,
             4,4,4,4,4,4,4,4,4,4,4,4,
             4,3,3,4,4,4,4,4,3,3,
             4,4,4,4,4,4,4,4,4,4,4,4,
             4,4,3,4,4)

duration2 <- c(0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.25,0.25,0.5,
               0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,1.0,
               0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.25,0.25,0.5,
               0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.5,0.5,
               0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.25,0.25,0.5,
               0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,1.0,
               0.5,0.25,0.25,0.25,0.25,0.25,0.25,0.5,0.5,0.25,0.5,0.25,
               0.5,0.5,0.5,0.5,1.75)


verse_2 <- data_frame(pitch = strsplit(pitch2, " ")[[1]],
                      duration = duration2,
                      octave = octave2)

# vocal 2
pitch3 <- "r A C C C D D C B A r A B C B A G D r r A C C C D D C B A E D C B D C B A A r"

octave3 <- c(4,3,4,4,4,4,4,4,3,3,4,3,3,4,3,3,3,4,4,
             4,3,4,4,4,4,4,4,3,3,4,4,4,3,4,4,3,3,3,4)
            

duration3 <- c(0.5,0.5,0.5,0.25,0.25,0.25,0.25,0.5,0.5,0.5,0.5,0.25,0.25,0.5,0.5,0.25,0.5,0.75,0.5,
               0.5,0.5,0.5,0.25,0.25,0.25,0.25,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,2.25,0.75)


verse_3 <- data_frame(pitch = strsplit(pitch3, " ")[[1]],
                      duration = duration3,
                      octave = octave3)

# Guitar outro (almost identical to guitar intro)
pitch4 <- "A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C D C B C B A A A B C B C E E E A"

octave4 <- c(3,3,3,4,3,4,4,4,3,4,
             3,3,3,3,3,4,3,4,4,4,
             3,4,3,3,3,3,3,4,3,4,
             4,4,3,4,3,3,3,3,3,4,
             3,4,4,4,3,4,3,3,
             3,3,3,4,3,4,4,4,4,3)

duration4 <- c(0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,0.5,0.25,0.25,0.25, 0.25,0.5,
               0.5,0.25,0.25,0.50,0.25,0.25,1.00,1.00,1.00,1.00)


verse_4 <- data_frame(pitch = strsplit(pitch4, " ")[[1]],
                      duration = duration4,
                      octave = octave4)


# Add the octaves to the data and add in the pitch and frequency for the audio output
song <- rbind(verse_1, verse_2, verse_3, verse_4) %>%
        mutate(note = notes[substr(pitch, 1, 1)],
               note = note + grepl("#", pitch) -
                       grepl("b", pitch) + octave * 12 +
                       12 * (note < 3),
               freq = 2 ^ ((note - 60) / 12) * 440)

# Tempo for the song
tempo <- 85
sample_rate <- 44100

# Function to get the audio wave data from the frequency, duration and tempo
## Need the fade to avoid weird clicking in the audio output
make_sine <- function(freq, duration) {
        wave <- sin(seq(0, duration / tempo * 60, 1 / sample_rate) *
                            freq * 2 * pi)
        fade <- seq(0, 1, 50 / sample_rate)
        wave * c(fade, rep(1, length(wave) - 2 * length(fade)), rev(fade))
}

# Get the wave file for the output
song_wave <-
        mapply(make_sine, song$freq, song$duration) %>%
        do.call("c", .)

# Play the song
play(song_wave)

