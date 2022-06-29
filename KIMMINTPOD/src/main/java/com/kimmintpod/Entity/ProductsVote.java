package com.kimmintpod.Entity;

import javax.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.util.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "productvote")
public class ProductsVote implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Vote")
    private Integer ID_Vote;
    @Column(name = "votevalue")
    private int VoteValue;
    @Column(name = "datecre")
    @Temporal(TemporalType.DATE)
    private Date DateCre;
    @JoinColumn(name = "User_Vote", referencedColumnName = "Username")
    @ManyToOne(optional = false)
    private Accounts User_Vote;
    @JoinColumn(name = "id_provote", referencedColumnName = "ID_Pro")
    @ManyToOne(optional = false)
    private Products ID_ProVote;
}
