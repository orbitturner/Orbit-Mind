# HOW TO SETUP DYNAMIC TABLE

## ♦️ OPTION 1 : 
[How to set table name in @Entity dynamically?](https://stackoverflow.com/questions/65901126/how-to-set-table-name-in-entity-dynamically)

## AUTO QUERY BUILDER

```typescript
export function autoQueryFilter(
  query: SelectQueryBuilder<any>,
  search: string,
  repository: Repository<any>,
) {
  if (search) {
    const metadata = repository.metadata;
    const columns = metadata.columns;
    const searchConditions = [];

    for (const column of columns) {
      const columnName = column.databaseName;
      const columnText = `CAST(p.${columnName} AS TEXT)`;

      searchConditions.push(`${columnText} ILIKE :search`);
    }

    const sql = query.getQuery(); // Obtient la requête SQL générée par TypeORM
    const regex = /LEFT JOIN ([^\s]+) ([^\s]+) ON/g; // Expression régulière pour extraire les clauses JOIN
    const joinClauses = sql.match(regex); // Récupère les clauses JOIN de la requête SQL

    if (joinClauses) {
      for (const joinClause of joinClauses) {
        const regex = /LEFT JOIN ([^\s]+) ([^\s]+) ON/;
        const match = regex.exec(joinClause);

        if (match && match.length === 3) {
          const [, table, alias] = match;
          const connection = repository.manager.connection;

          const tableName = table.replace(/"/g, ''); // Supprimer les guillemets doubles
          const joinMetadata = connection.getMetadata(tableName);
          const joinColumns = joinMetadata.columns;
          const joinAliasText = alias.replace(/"/g, '');

          for (const joinColumn of joinColumns) {
            const joinColumnName = joinColumn.databaseName;
            const joinColumnText = `CAST(${joinAliasText}.${joinColumnName} AS TEXT)`;

            searchConditions.push(`${joinColumnText} ILIKE :search`);
          }
        }
      }
    }

    if (searchConditions.length > 0) {
      query.andWhere(
        new Brackets((qb) => {
          for (let i = 0; i < searchConditions.length; i++) {
            if (i === 0) {
              qb.where(searchConditions[i], {
                search: `%${search.toLowerCase()}%`,
              });
            } else {
              qb.orWhere(searchConditions[i], {
                search: `%${search.toLowerCase()}%`,
              });
            }
          }
        }),
      );
    }
  }
  return query;
}
```