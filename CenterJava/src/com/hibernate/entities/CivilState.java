package com.hibernate.entities;
// Generated 7-Jan-2019 9:27:02 PM by Hibernate Tools 4.3.1



/**
 * CivilState generated by hbm2java
 */
public class CivilState  implements java.io.Serializable {


     private int idCivilState;
     private String idUser;
     private String libStateCivilAr;
     private String libStateCivilEn;
     private String descpStateCivil;

    public CivilState() {
    }

	
    public CivilState(int idCivilState) {
        this.idCivilState = idCivilState;
    }
    public CivilState(int idCivilState, String idUser, String libStateCivilAr, String libStateCivilEn, String descpStateCivil) {
       this.idCivilState = idCivilState;
       this.idUser = idUser;
       this.libStateCivilAr = libStateCivilAr;
       this.libStateCivilEn = libStateCivilEn;
       this.descpStateCivil = descpStateCivil;
    }
   
    public int getIdCivilState() {
        return this.idCivilState;
    }
    
    public void setIdCivilState(int idCivilState) {
        this.idCivilState = idCivilState;
    }
    public String getIdUser() {
        return this.idUser;
    }
    
    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }
    public String getLibStateCivilAr() {
        return this.libStateCivilAr;
    }
    
    public void setLibStateCivilAr(String libStateCivilAr) {
        this.libStateCivilAr = libStateCivilAr;
    }
    public String getLibStateCivilEn() {
        return this.libStateCivilEn;
    }
    
    public void setLibStateCivilEn(String libStateCivilEn) {
        this.libStateCivilEn = libStateCivilEn;
    }
    public String getDescpStateCivil() {
        return this.descpStateCivil;
    }
    
    public void setDescpStateCivil(String descpStateCivil) {
        this.descpStateCivil = descpStateCivil;
    }




}


