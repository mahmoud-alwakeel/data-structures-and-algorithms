void main() {
  print(returnFavSongs([20,10,30,50,5,100]));
}

List<int> returnFavSongs(List<int> songs) {
  for(int i = 0; i < songs.length; i++) {
    int greatestNumIndex = i;
    int temp = songs[i];

    for (int j = i + 1; j < songs.length; j++) {
      if(songs[greatestNumIndex] < songs[j]) {
        greatestNumIndex = j;
      }
    }
    songs[i] = songs[greatestNumIndex];
    songs[greatestNumIndex] = temp;
  }
  return songs;
} 