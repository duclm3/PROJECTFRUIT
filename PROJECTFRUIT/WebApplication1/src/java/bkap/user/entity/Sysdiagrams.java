package bkap.user.entity;
// Generated 24-Sep-2019 20:07:04 by Hibernate Tools 4.3.1


import java.io.Serializable;

/**
 * Sysdiagrams generated by hbm2java
 */
public class Sysdiagrams  implements java.io.Serializable {


     private int diagramId;
     private Integer version;
     private Serializable name;
     private int principalId;
     private byte[] definition;

    public Sysdiagrams() {
    }

	
    public Sysdiagrams(int diagramId, Serializable name, int principalId) {
        this.diagramId = diagramId;
        this.name = name;
        this.principalId = principalId;
    }
    public Sysdiagrams(int diagramId, Serializable name, int principalId, byte[] definition) {
       this.diagramId = diagramId;
       this.name = name;
       this.principalId = principalId;
       this.definition = definition;
    }
   
    public int getDiagramId() {
        return this.diagramId;
    }
    
    public void setDiagramId(int diagramId) {
        this.diagramId = diagramId;
    }
    public Integer getVersion() {
        return this.version;
    }
    
    public void setVersion(Integer version) {
        this.version = version;
    }
    public Serializable getName() {
        return this.name;
    }
    
    public void setName(Serializable name) {
        this.name = name;
    }
    public int getPrincipalId() {
        return this.principalId;
    }
    
    public void setPrincipalId(int principalId) {
        this.principalId = principalId;
    }
    public byte[] getDefinition() {
        return this.definition;
    }
    
    public void setDefinition(byte[] definition) {
        this.definition = definition;
    }




}


