use sakila;
select amount from payment where payment_id=5;

select * from payment where amount=5.99;

select * from payment where amount=(select amount from payment where payment_id=4);

select * from payment;

-- i need to get the information where the staff salary for payment 8 be same.

select * from payment where staff_id = (select staff_id from payment where payment_id=8);

-- get the payment id amount and payment date where the month of payment should be save as a payment id 20.

select payment_id, amount, payment_date from payment where month(payment_date)=
(select month(payment_date) from payment where payment_id=22);

-- get the amount and the total number of payment done for each amount where the amount should be less than the amount of rental id 1725.

  select amount from payment where rental_id=1725;
 
 select amount, count(*) from payment where amount<
 (select amount from payment where rental_id=1725) group by amount;

-- get the month and the total amount spend from the  payment where the month greater than the month of customer id 1
-- with the payment id 3.

-- single row subquery( subquery will return 1 row)

select month(payment_date) from payment where customer_id=1 and payment_id=3;

select month(payment_date), sum(amount) from payment where month(payment_date)>
(select month(payment_date) from payment where customer_id=1 and payment_id=3)
group by month(payment_date);

-- in multi row subquery( we can't use >,<,=, != operator)
select amount from payment where payment_id=2 or payment_id=3;

select * from payment
where amount=( select amount from payment where payment_id=2 or payment_id=3);

-- in, any, all
select * from payment
where amount in(select amount from payment where payment_id=2 or payment_id=3);




