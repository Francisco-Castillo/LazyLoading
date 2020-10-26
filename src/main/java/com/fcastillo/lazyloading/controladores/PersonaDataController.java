/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fcastillo.lazyloading.controladores;

import com.fcastillo.lazyloading.ejb.PersonaFacadeLocal;
import com.fcastillo.lazyloading.entidades.Persona;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import org.primefaces.model.FilterMeta;
import org.primefaces.model.LazyDataModel;
import org.primefaces.model.SortOrder;

/**
 *
 * @author fcastillo
 */
@Named(value = "personaDataController")
@ViewScoped
public class PersonaDataController implements Serializable {

  @EJB
  PersonaFacadeLocal personaEJB;

  private LazyDataModel<Persona> listaPersonas;
  private Persona personaSeleccionada = new Persona();

  public Persona getPersonaSeleccionada() {
    return personaSeleccionada;
  }

  public void setPersonaSeleccionada(Persona personaSeleccionada) {
    this.personaSeleccionada = personaSeleccionada;
  }

  public LazyDataModel<Persona> getListaPersonas() {
    return listaPersonas;
  }

  public void setListaPersonas(LazyDataModel<Persona> listaPersonas) {
    this.listaPersonas = listaPersonas;
  }

  @PostConstruct
  public void init() {
    iniciar();
  }

  private void iniciar() {
    listaPersonas = new LazyDataModel<Persona>() {
      @Override
      public List<Persona> load(int first, int pageSize, String sortField, SortOrder sortOrder, Map<String, FilterMeta> filterBy) {
        List<Persona> listaDePersonas = personaEJB.findAll(first, pageSize, sortField, sortOrder, filterBy);
        listaPersonas.setRowCount(personaEJB.count(filterBy));
        refreshTableState();
        return listaDePersonas;
      }

      @Override
      public Object getRowKey(Persona object) {
        return object.getId();
      }

      @Override
      public Persona getRowData(String rowKey) {
        Persona persona = null;
        try {
          persona = personaEJB.find(Integer.parseInt(rowKey));
        } catch (NumberFormatException e) {
          System.out.println("ocurrio un error : " + e.getLocalizedMessage());
        }
        return persona;
      }
    };
  }

  private void refreshTableState() {
    UIComponent tabla = FacesContext.getCurrentInstance().getViewRoot().findComponent(":frmPrincipal:tblPersonas");
    tabla.setValueExpression("sortBy", null);
  }
}
