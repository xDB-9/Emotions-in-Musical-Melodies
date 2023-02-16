**Music Attributes**

The dataset gathered in the Spotify_API.R code of this project contains the song attributes. Before performing data analysis it is necessary to understand those features individually.
The song attributes in the dataset are explained below:

**Tempo:**
The tempo of the song. The overall estimated tempo of a track in beats per minute (BPM). In musical terminology, the tempo is the speed or pace of a given piece and derives directly from the average beat duration.

**Energy:**
Energy is a measure from 0.0 to 1.0 and represents a perceptual measure of intensity and activity. Typically, energetic tracks feel fast, loud, and noisy. Higher the value more energetic the song.

**Danceability:**
Danceability describes how suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity. The value ranges from 0 to 1. Higher the value more suitable the song is for dancing.

**Loudness:**
Loudness values are averaged across the entire track. It is the quality of a song. It ranges from -60 to 0 DB. Higher the value, the louder the song.

**Valence:**
A measure from 0.0 to 1.0 describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive (e.g. happy, cheerful, euphoric), while tracks with low valence sound more negative (e.g. sad, depressed, angry).

**Liveness:**
Detects the presence of an audience in the recording. Higher liveness values represent an increased probability that the track was performed live. A value above 0.8 provides a strong likelihood that the track is live.

**Acousticness:**
A confidence measure from 0.0 to 1.0 of whether the track is acoustic. 1.0 represents high confidence the track is acoustic.

**Speechiness:**
Speechiness detects the presence of spoken words in a track. The more exclusively speech-like the recording (e.g. talk show, audiobook, poetry), the closer to 1.0 the attribute value. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.

**Mode:**
Songs can be classified as major and minor. 1.0 represents major mode and 0 represents minor.

**Key:**
Key is the pitch, notes or scale of song that forms the basis of a song. 12 keys are ranging from 0 to 11.
