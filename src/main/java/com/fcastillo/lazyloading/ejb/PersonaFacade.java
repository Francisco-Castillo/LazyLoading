/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fcastillo.lazyloading.ejb;

import com.fcastillo.lazyloading.entidades.Persona;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.primefaces.model.FilterMeta;
import org.primefaces.model.SortOrder;

/**
 *
 * @author fcastillo
 */
@Stateless
public class PersonaFacade extends AbstractFacade<Persona> implements PersonaFacadeLocal {

  @PersistenceContext(unitName = "com.fcastillo_lazyloading_war_1.0-SNAPSHOTPU")
  private EntityManager em;

  @Override
  protected EntityManager getEntityManager() {
    return em;
  }

  public PersonaFacade() {
    super(Persona.class);
  }

  @Override
  public List<Persona> findAll(int start, int size, String sortField, SortOrder sortOrder, Map<String, FilterMeta> filters) {
    CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();
    CriteriaQuery<Persona> criteriaQuery = criteriaBuilder.createQuery(Persona.class);
    Root<Persona> root = criteriaQuery.from(Persona.class);
    CriteriaQuery<Persona> select = criteriaQuery.select(root);
    List<Predicate> listaPredicados = new ArrayList<>();
    List<Persona> listaPersonas = new ArrayList<>();
    try {
      // Ordenamos coleccion
      if (sortField != null) {
        criteriaQuery.orderBy(sortOrder == SortOrder.ASCENDING
                ? criteriaBuilder.asc(root.get(sortField))
                : criteriaBuilder.desc(root.get(sortField)));
      }

      // Filtramos
      if (filters != null && filters.size() > 0) {
        Object id = filters.get("id").getFilterValue();
        String email = (String) filters.get("email").getFilterValue();
        String nombreApellido = (String) filters.get("nombreApellido").getFilterValue();

        if (id != null) {
          Predicate predicado = criteriaBuilder.equal(root.get("id"), id);
          listaPredicados.add(predicado);
        }
        if (nombreApellido != null) {
          Predicate predicado = criteriaBuilder.like(criteriaBuilder.lower(root.get("nombreApellido")), "%" + nombreApellido.toLowerCase() + "%");
          listaPredicados.add(predicado);
        }

        if (email != null) {
          Predicate predicado = criteriaBuilder.like(criteriaBuilder.lower(root.get("email")), "%" + email.toLowerCase() + "%");
          listaPredicados.add(predicado);
        }

        // Añadimos predicados al criterio de busqueda
        if (listaPredicados.size() > 0) {
          listaPredicados.forEach(x -> {
            criteriaQuery.where(listaPredicados.toArray(new Predicate[listaPredicados.size()]));
          });
        }

      }

      TypedQuery<Persona> query = em.createQuery(criteriaQuery);
      query.setFirstResult(start);
      query.setMaxResults(size);
      listaPersonas = query.getResultList();
    } catch (Exception e) {
    }
    return listaPersonas;
  }

  @Override
  public int count(Map<String, FilterMeta> filters) {

    CriteriaBuilder criteriaBuilder = em.getCriteriaBuilder();
    CriteriaQuery<Persona> criteriaQuery = criteriaBuilder.createQuery(Persona.class);

    Root<Persona> root = criteriaQuery.from(Persona.class);

    List<Predicate> listaPredicados = new ArrayList<>();
    List<Persona> listaPersonas = new ArrayList<>();

    criteriaQuery.select(root);

    // Filtramos
    if (filters != null && filters.size() > 0) {
      Object id = filters.get("id").getFilterValue();
      String email = (String) filters.get("email").getFilterValue();
      String nombreApellido = (String) filters.get("nombreApellido").getFilterValue();

      if (id != null) {
        Predicate predicado = criteriaBuilder.equal(root.get("id"), id);
        listaPredicados.add(predicado);
      }
      if (nombreApellido != null) {
        Predicate predicado = criteriaBuilder.like(criteriaBuilder.lower(root.get("nombreApellido")), "%" + nombreApellido.toLowerCase() + "%");
        listaPredicados.add(predicado);
      }

      if (email != null) {
        Predicate predicado = criteriaBuilder.like(criteriaBuilder.lower(root.get("email")), "%" + email.toLowerCase() + "%");
        listaPredicados.add(predicado);
      }
      // Añadimos predicados al criterio de busqueda
      if (listaPredicados.size() > 0) {
        listaPredicados.forEach((p) -> {
          criteriaQuery.where(listaPredicados.toArray(new Predicate[listaPredicados.size()]));
        });
      }

    }

    TypedQuery<Persona> query = em.createQuery(criteriaQuery);

    return query.getResultList().size();
  }

}
