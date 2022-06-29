package com.kimmintpod.Entity;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*;
import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table
public class Brands implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Brand")
    private Integer ID_Brand;
    @Column(name = "Name_Brand")
    private String Name_Brand;
    @Column(name = "Image_Brand")
    private String Image_Brand;
    @Column(name = "Activated")
    private boolean Activated;
    @Column(name = "datecre")
    @Temporal(TemporalType.DATE)
    private Date DateCre;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "Brand_Pro")
    private Collection<Products> productsCollection;
    @JoinColumn(name = "User_Brand", referencedColumnName = "Username")
    @ManyToOne(optional = false)
    private Accounts User_Brand;
}
