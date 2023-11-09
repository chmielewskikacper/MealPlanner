package repositories.interfaces;

import java.util.List;

public interface CRUDRepository <T> {
    T create(T entity);

    T read(int entityId);

    void update(T entity);

    void delete(T entity);

    List<T> findAll();
}
