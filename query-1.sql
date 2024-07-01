-- Selezione Base
-- Scrivi una query per selezionare tutte le colonne di tutti gli impiegati.
--

SELECT *
FROM employees

-- Selezione Condizionata
-- Scrivi una query per trovare tutti gli impiegati il cui stipendio è superiore a 2000.
-- 

SELECT *
FROM employees
WHERE salary > 2000;

-- Selezione Condizionata
-- Scrivi una query per trovare tutti gli impiegati il cui stipendio è superiore a 2000
-- e il nome che comincia per 'g'
-- 

SELECT *
FROM employees 
WHERE salary > 2000
 	AND firstname LIKE 'g%'


-- Funzioni di Aggregazione
-- Scrivi una query per determinare lo stipendio medio di tutti gli impiegati.
-- 
 	
SELECT AVG(salary) AS 'avg_salary'
FROM employees

-- Ordinamento dei Risultati
-- Scrivi una query per recuperare i nomi e i cognomi di tutti gli impiegati, ordinati per cognome in ordine decrescente.
-- 

SELECT firstname, lastname 
FROM employees
ORDER BY lastname DESC

-- Corrispondenza di Modelli
-- Scrivi una query per trovare gli impiegati il cui nome contiene la lettera 'a'.
-- 

SELECT *
FROM employees
WHERE firstname LIKE '%a%'

-- Corrispondenza di Modelli
-- Scrivi una query per trovare gli impiegati il cui nome contiene la lettera 'a' 
-- in terza posizione.
-- 

SELECT *
FROM employees
WHERE firstname LIKE '__a%'

-- Sottoquery
-- Scrivi una query per trovare i nomi degli impiegati che guadagnano più della media degli stipendi di tutti gli impiegati ordinati per salario.
-- 

SELECT firstname, salary 
FROM employees
WHERE salary >  
	(
		SELECT AVG(salary)
		FROM employees
	)
ORDER BY salary 

-- Limitazione dei Risultati
-- Scrivi una query per recuperare solo i primi 5 record degli impiegati ordinati per data di created_at in ordine ascendente.

SELECT *
FROM employees
ORDER BY created_at
LIMIT 5

-- Selezione Specifica di Colonne
-- Scrivi una query per selezionare solamente i nomi e i cognomi di tutti gli impiegati.
-- 

SELECT firstname, lastname
FROM employees

-- Impiegati Recenti
-- Scrivi una query per trovare gli impiegati assunti dopo il 1° gennaio 2024.
-- 

SELECT *
FROM employees
WHERE created_at > '2024-01-01';

-- Impiegati e Ultima Modifica
-- Scrivi una query per elencare tutti gli impiegati insieme alla data dell'ultima modifica del loro record (updated_at), ordinati dalla data più recente alla meno recente.
-- 

SELECT firstname, lastname, updated_at 
FROM employees
ORDER BY updated_at DESC

-- Ricerca per Codice Fiscale
-- Scrivi una query per trovare le informazioni complete di un impiegato dato un codice fiscale specifico (ad esempio, '317435621407').
-- 

SELECT *
FROM employees
WHERE fiscal_code LIKE '317435621407';

-- Impiegati Senza Aggiornamenti
-- Scrivi una query per trovare gli impiegati che non hanno mai avuto un aggiornamento nel loro record (dove updated_at è uguale a created_at).
-- 

SELECT *
FROM employees e 
WHERE created_at = updated_at 

-- Top 10 Stipendi Più Alti
-- Scrivi una query per elencare i 10 impiegati con lo stipendio più alto.
-- 

SELECT *
FROM employees
ORDER BY salary DESC 
LIMIT 10


-- Intervallo di Stipendi
-- Scrivi una query per trovare gli impiegati il cui stipendio è compreso tra 1500 e 2500.
-- 

-- SELECT *
-- FROM employees
-- WHERE salary BETWEEN 1500 AND 2500

SELECT *
FROM employees
WHERE salary > 1500
		AND salary < 2500;

-- Dati di Impiegati Specifici
-- Scrivi una query per selezionare tutti i dati degli impiegati con cognomi che iniziano per 'K' o terminano per 'n'.
	
SELECT *
FROM employees
WHERE lastname LIKE 'k%'
	OR lastname LIKE '%n' 