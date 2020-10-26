/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fcastillo.lazyloading.ejb;

import com.fcastillo.lazyloading.entidades.Persona;
import java.util.List;
import java.util.Map;
import javax.ejb.Local;
import org.primefaces.model.FilterMeta;
import org.primefaces.model.SortOrder;

/**
 *
 * @author fcastillo
 */
@Local
public interface PersonaFacadeLocal {

  void create(Persona persona);

  void edit(Persona persona);

  void remove(Persona persona);

  Persona find(Object id);

  List<Persona> findAll();

  List<Persona> findRange(int[] range);

  int count();

  List<Persona> findAll(int start, int size, String sortField, SortOrder sortOrder, Map<String, FilterMeta> filters);

  int count(Map<String, FilterMeta> filters);

}
