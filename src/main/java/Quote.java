import java.io.Serializable;

public class Quote implements Serializable {
    private int id;
    private Author Author;
    private String content;


    public Quote() {
    }

    public Quote(int id, Author Author, String Content){
        this.id = id;
        this.Author = Author;
        this.content = content;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
