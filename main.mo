actor MoodMusic {

 
    public type Mood = Text;


    public type Song = Text;


    private let moodSongs : [(Mood, Song)] = [
        ("happy", "Burak Bulut-Ama yine sen"),
        ("sad", "Müslüm gürses-Nilüfer"),
        ("excited", "Thunder - Imagine Dragons"),
        ("aşk", "Gülümse - Sezen Aksu") 
    ];

   
    public query func getSongForMood(mood: Mood) : async Song {
        switch mood {
            case "happy" {
                return "Burak Bulut-Ama yine sen";
            };
            case "sad" {
                return "Müslüm gürses-Nilüfer";
            };
            case "excited" {
                return "Thunder - Imagine Dragons";
            };
            case "aşk" {
                return "Gitme - Sezen Aksu"; 
            };
            case _ {
                return "Sorry, no song found for this mood."; 
            };
        }
    };
}
