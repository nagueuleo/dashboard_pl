--- test si une valeur null est présente dans le modèle si c'est le cas on des éléments aprè le test

SELECT *
FROM {{ ref('Fact_pldata') }}
WHERE team IS NULL