package com.kimmintpod.Entity;

import java.io.Serializable;

import javax.persistence.*;
import lombok.*;
import java.util.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table
public class BLOG implements Serializable{

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_BLOG")
    private Integer ID_BLOG;
    @Column(name = "TITLE")
    private String TITLE;
    @Column(name = "SUBJ")
    private String SUBJ;
    @Column(name = "BODY")
    private String BODY;
    @Column(name = "datecre")
    @Temporal(TemporalType.DATE)
    private Date DateCre;
    @Column(name = "HIDE")
    private boolean HIDE;
    @JoinColumn(name = "ID_User", referencedColumnName = "Username")
    @ManyToOne(optional = false)
    private Accounts ID_User;
}
