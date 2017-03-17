Use [Uni_apply]

-- Procedure for SIGN UP
GO
Create table Cources ( ID Int Primary Key NOT NULL IDENTITY(1,1),
                       cource_name  varchar(50) ,
                       uni_ID  Int Foreign Key References University(id),
					   price varchar(30)
                      )
Create Procedure SigningIn
@fname varchar(50),@lname varchar(50),@uname varchar(50), @Email varchar(50), @Pass varchar(50),@phone varchar(50)
,@city varchar(50),  @Status varchar(1) Output
As
Begin
If Exists(Select * From Users As A Where A.username=@uname)
	Begin
		Set @Status='0'  -- User is already present
	End	
Else 
	Begin
		Insert Into Users (first_name,last_name,username,email_address,password,phone_number,city) Values (@fname,@lname,
		@uname,@Email, @Pass, @phone,@city)
		Set @Status='1'  -- User has been entered
	End
End



Create Procedure filligin
@cnic varchar(50),@address varchar(50),@gpa varchar(50), @gre varchar(50), @matric varchar(50),@current varchar(50),@department varchar(50)
,@ps varchar(500), @username varchar(50), @Status varchar(1) Output
As
Begin

	update Users
	set CNIC=@cnic,address=@address,gpa=@gpa,gre=@gre,matric=@matric,current_institute=@current,department_required=@department,personal_statement=@ps
	where username=@username
		Set @Status='1'  -- User has been entered
End
Execute filligin 'asadoo'



select * from Programs
--Execution
--Declare @TestStatus varchar(1)
--Execute SigningUp 'Hamza', 'hamza@gmail.com', '123', @Status=@TestStatus Output
--Select @TestStatus As Status
Select * from Users
--Procedure for LOGIN
GO
Create Procedure LoggingIn
@Email varchar(50), @Pass varchar(50), @Status varchar(1) Output 
As
Begin  
If Exists (Select * From Users Where username=@Email and password=@Pass)
	Begin
		Set @Status='1' --User Exists
		
	End
Else
	Begin 
	If Exists ( Select * From Users Where username!=@Email OR password!=@Pass)
		Begin
			Set @Status='0' -- Password Incorrect
		
		End
	End
End

--Declare @TestStatus varchar(1)
--Execute LoggingIn 'asadoo', '123', @Status=@TestStatus Output

--Select @TestStatus As Status
--Select * From USERS
create procedure dbo.based_on_programs
@program_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select uo.id
		from University uo join Programs_offered po on uo.id=po.uni_id join Programs p on po.program_id=p.id 
		where p.name=@program_name)
end
Execute based_on_programs 'Engineering'
--Drop Procedure LoggingIn
--,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
create procedure dbo.based_on_city
@city_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select u.id
		from University u join Master_info mi on u.id=mi.uni_id
		where mi.city=@city_name)
end
Execute based_on_city 'Lahore'

create procedure details
@uni_name varchar(40)
as
begin 
	
	select u.name,mi.address,u.description,mi.rankings,b.male_female_ratio,b.acceptance_rate,mi.ratings,b.students,b.financial_aid,b.total_societies
	,b.total_faculty,mi.min_sat,mi.min_nat
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in
		(select id
		from University
		where name=@uni_name)
end
Execute details 'Fast university'

create procedure Cource
@uni_name varchar(30)
as
begin
	select c.cource_name,c.price
	from University u join Cources c on u.id=c.uni_ID
	where u.id in
		(select id
		from University
		where name=@uni_name)
end
Execute Cource 'Fast university'

create procedure similar
@uni_name varchar(30)
as
begin
select u.name
	from University u 
	where u.id in (
		select uo.id
		from University uo join Programs_offered po on uo.id=po.uni_id join Programs p on po.program_id=p.id 
		where p.name in (select p.name
						from University u join Programs_offered po on u.id=po.uni_id join Programs p on po.program_id=p.id
						where u.name=@uni_name))

end
Execute similar 'Fast university'

create procedure based_on_city_rank_sort
@city_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select u.id
		from University u join Master_info mi on u.id=mi.uni_id
		where mi.city=@city_name)
	order by mi.rankings
end

create procedure based_on_programs_rank_sort
@program_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select uo.id
		from University uo join Programs_offered po on uo.id=po.uni_id join Programs p on po.program_id=p.id 
		where p.name=@program_name)
	order by mi.rankings
end

create procedure based_on_city_tuition_sort
@city_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select u.id
		from University u join Master_info mi on u.id=mi.uni_id
		where mi.city=@city_name)
	order by po.price
end

create procedure based_on_programs_tuition_sort
@program_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select uo.id
		from University uo join Programs_offered po on uo.id=po.uni_id join Programs p on po.program_id=p.id 
		where p.name=@program_name)
	order by po.price
end

create procedure based_on_city_acc_sort
@city_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select u.id
		from University u join Master_info mi on u.id=mi.uni_id
		where mi.city=@city_name)
	order by b.acceptance_rate
end

create procedure based_on_programs_acc_sort
@program_name varchar(50)
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	where u.id in (
		select uo.id
		from University uo join Programs_offered po on uo.id=po.uni_id join Programs p on po.program_id=p.id 
		where p.name=@program_name)
	order by b.acceptance_rate
end

create procedure top_unis
as
begin
	select u.name
	from University u join Master_info mi on u.id=mi.uni_id
	order by mi.rankings
end

create procedure top_unis_users
@user_name varchar(50)
as
begin
	select u.name
	from University u join Master_info mi on u.id=mi.uni_id
	where mi.city in (select city 
	from Users
	where username=@user_name)
	order by mi.rankings
end
Execute top_unis_users 'hhh'
--Drop Procedure top_unis_users
create procedure all_unis
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
end
Execute all_unis


create procedure user_details
@username varchar(50)
as
begin
	select u.first_name,u.last_name,u.email_address,u.CNIC,u.address,u.city,u.gpa,u.gre,u.matric,u.current_institute
	,u.department_required,u.personal_statement
	from Users u
	where username=@username
end

truncate table Badges
truncate table Cources
truncate table Master_info
truncate table programs_offered
truncate table University

create procedure all_unis_rank
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	order by mi.rankings
end
execute all_unis_rank 
drop procedure all_unis_rank 
create procedure all_unis_tuition
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	order by po.price
end

create procedure all_unis_acceptance
as
begin
	select u.name,mi.address,u.description,mi.ratings,mi.rankings,po.price,b.students,b.acceptance_rate,b.financial_aid
	from University u join Master_info mi on u.id=mi.uni_id join Programs_offered po on u.id=po.uni_id	join Badges b on u.id=b.uni_id
	order by b.acceptance_rate
end