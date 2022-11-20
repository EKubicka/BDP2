DECLARE @YearsAgo int = 9;

BEGIN

SELECT fact.*, dim.CurrencyAlternateKey FROM [dbo].[DimCurrency] dim, [dbo].[FactCurrencyRate] fact 
	WHERE dim.CurrencyKey = fact.CurrencyKey 
		AND dim.CurrencyAlternateKey in ('GBP', 'EUR')
		AND fact.Date <= DATEADD(year, @YearsAgo, GETDATE());

END;