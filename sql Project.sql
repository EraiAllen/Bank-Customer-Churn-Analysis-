use Erai_DB


select * from cleaned_customers

select count(*) as Total_customers from Cleaned_customers 

select sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers from cleaned_customers


select count(*) as Total_Churned_Customers_By_country,Geography from cleaned_customers
where Exited=1 
group by Geography

select count(case when exited=1 then 1 end)*100/count(*) as churn_rate from cleaned_customers

select count(*) as Total_Churned_Customers_By_Gender,Gender from cleaned_customers
where Exited=1 
group by Gender 

select sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers,AgeGroup from cleaned_customers 
where AgeGroup is not null 
group by AgeGroup
order by AgeGroup

select sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers,TenureGroup from cleaned_customers  
where TenureGroup is not null
group by TenureGroup
order by TenureGroup

SELECT Has_Credit_Card,sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers from cleaned_customers
GROUP BY Has_Credit_Card;

select ActiveMember,sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers from cleaned_customers
Group by ActiveMember

select Balance,sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers from cleaned_customers
Group by Balance 

select Balance,sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers from cleaned_customers
Group by Balance

select Gender,sum(convert(int,Exited)) as Total_Churned_Customers,count(*) as Total_Customers from cleaned_customers
where CreditScore >700
group By Gender

SELECT
    Exited,
    AVG(EstimatedSalary) AS Avg_Salary
FROM cleaned_customers
GROUP BY Exited;

select top 10 EstimatedSalary,CustomerId,Exited as churned_Customer from cleaned_customers
order by EstimatedSalary desc






