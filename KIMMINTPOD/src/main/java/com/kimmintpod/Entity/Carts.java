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
public class Carts implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Cart")
    private Integer ID_Cart;
    @Column(name = "QTY")
    private int QTY;
    @Column(name = "datecre")
    @Temporal(TemporalType.DATE)
    private Date DateCre;
    @Column(name = "Puchases")
    private boolean Puchases;
    @JoinColumn(name = "ID_User", referencedColumnName = "Username")
    @ManyToOne(optional = false)
    private Accounts ID_User;
    @JoinColumn(name = "ID_Pro", referencedColumnName = "ID_Pro")
    @ManyToOne(optional = false)
    private Products ID_Pro;
}
