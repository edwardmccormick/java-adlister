import java.io.Serializable;

public class Quotes implements Serializable {
    private int id;
    private String authorFirstName;
    private String authorLastName;
    private String content;


    public Quotes() {
    }

    public Quotes(int id, String AuthorFirstName, String AuthorLastName, String Content){
        this.id = id;
        this.authorFirstName = AuthorFirstName;
        this.authorLastName = AuthorLastName;
        this.content = content;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthorFirstName() {
        return authorFirstName;
    }

    public void setAuthorFirstName(String authorFirstName) {
        this.authorFirstName = authorFirstName;
    }

    public String getAuthorLastName() {
        return authorLastName;
    }

    public void setAuthorLastName(String authorLastName) {
        this.authorLastName = authorLastName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
