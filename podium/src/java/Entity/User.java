package Entity;
// Generated 13 oct. 2017 20:33:40 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * User generated by hbm2java
 */
@Entity
@Table(name="user"
    ,catalog="podium"
)
public class User  implements java.io.Serializable {


     private String login;
     private String password;
     private Set paiements = new HashSet(0);

    public User() {
    }

	
    public User(String login, String password) {
        this.login = login;
        this.password = password;
    }
    public User(String login, String password, Set paiements) {
       this.login = login;
       this.password = password;
       this.paiements = paiements;
    }
   
     @Id 

    
    @Column(name="login", unique=true, nullable=false, length=500)
    public String getLogin() {
        return this.login;
    }
    
    public void setLogin(String login) {
        this.login = login;
    }

    
    @Column(name="password", nullable=false, length=500)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="user")
    public Set getPaiements() {
        return this.paiements;
    }
    
    public void setPaiements(Set paiements) {
        this.paiements = paiements;
    }




}


