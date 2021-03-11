import java.io.Serializable;

public class Albums implements Serializable {
    private int id;
    private String artist;
    private String name;
    private int releaseDate;
    private Float sales;
    private String genre;

    public Albums(int id, String artist, String name, int releaseDate, Float sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.name = name;
        this.releaseDate = releaseDate;
        this.sales = sales;
        this.genre = genre;
    }

    public Albums() {}

//    id — auto-incrementing unsigned integer primary key
//    artist — string for storing the recording artist name
//    name — string for storing a record name
//    release_date — integer representing year record was released
//    sales — floating point value for number of records sold (in millions)
//    genre — string for storing the record's genre(s)


    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(int releaseDate) {
        this.releaseDate = releaseDate;
    }

    public Float getSales() {
        return sales;
    }

    public void setSales(Float sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
