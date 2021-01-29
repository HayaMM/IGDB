package com.ga.igdb.model;
import java.sql.Date;
import java.time.LocalDateTime;
import java.util.Set;
import javax.persistence.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="Game")
public class Game {
	@Id
	@GeneratedValue
	private int id;
	private String gameName;
	// cover is a photo of the game
	private String cover;
    private int rankNum;
	private String companyName;
	private String console;
	private Date releaseDate;
	private String category;
	private String description;
	// Review video of game play
	private String demo;
	
//	// Relations
//	//user 1 - N game
//	//game 1 - N review



	@ManyToOne
	@JoinColumn(name = "FK_UserId")
	private User user;
	
	@OneToMany(mappedBy = "game")
	private Set<Reviews> reviews;
	
	@Column(name="createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDateTime createAt;
	
	
	public String getGameName() {
		return gameName;
	}
	public void setGameName(String gameName) {
		this.gameName = gameName;
	}
	
	public LocalDateTime getCreateAt() {
		return createAt;
	}
	public void setCreateAt(LocalDateTime createAt) {
		this.createAt = createAt;
	}
	public LocalDateTime getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(LocalDateTime updateAt) {
		this.updateAt = updateAt;
	}
	@Column(name="updatedat", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateAt;


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public int getRankNum() {
		return rankNum;
	}
	public void setRankNum(int rankNum) {
		this.rankNum = rankNum;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getConsole() {
		return console;
	}
	public void setConsole(String console) {
		this.console = console;
	}
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDemo() {
		return demo;
	}
	public void setDemo(String demo) {
		this.demo = demo;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}
	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set<Reviews> getReviews() {
		return reviews;
	}
	public void setReviews(Set<Reviews> reviews) {
		this.reviews = reviews;
	}
	
}
