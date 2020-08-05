/*
 * ===================================================================
 *
 *       Filename:  database.cc
 *
 *    Description:  Definition of MySQL Class for accessing database
 *
 *        Created:  Friday 22 February 2013 02:07:49  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include mysql.h file local header file(declaration of class)
 *------------------------------------------------------------------*/

#include "database.h"
#include <string>


/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: MySQL()
 * Description:  Constructor to initialize database conectivity
 *--------------------------------------------------------------------
 */

MySQL :: MySQL()
{
    connect = mysql_init(NULL);
    if ( !connect )
    {
        cout << "MySQL Initialization Failed";
    }   

    connect = mysql_real_connect(connect, SERVER, USER, PASSWORD, DATABASE, 0,NULL,0);
    
    if ( connect )
    {
        cout << "Connection Succeeded\n";
    }
    
    else
    {
        cout << "Connection Failed\n";
    }
}

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ShowTables()
 * Description:  Show tables in database
 *--------------------------------------------------------------------
 */

void MySQL :: ShowTables()
{
    /** Add MySQL Query */
    mysql_query (connect,"show tables");                              
                                                                          
    i = 0;
                                                                         
    res_set = mysql_store_result(connect);                              
                                                                          
    unsigned int numrows = mysql_num_rows(res_set);                   
                                                                          
    cout << " Tables in " << DATABASE << " database " << endl;        
                                                                         
    while (((row=mysql_fetch_row(res_set)) != NULL))
    {                                                                 
        cout << row[i] << endl;                                       
    }
}

/**
 *--------------------------------------------------------------------
 *       Class:  MySQL
 *      Method:  MySQL :: ~MySQL()
 * Description:  Destructor of MySQL class for closing mysql
 *               connection
 *--------------------------------------------------------------------
 */

MySQL :: ~MySQL()
{
    mysql_close (connect);
}
void MySQL::Query_1()
{

	string part1 = "select store_book_id, title from books inner join stock on books.book_id = stock.book_id and books.title = '";
	string part2 = "'and stock.location != 'sold' ";
	char input[100];
	cout << "Which book do you want to search for?" << endl;
	cin.getline(input,100);
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The book " << input << " is in stock, the id number is: " << row[0] << endl;
	}
	else {
		cout << "The book " << input << " is not in stock. " << endl;
	}


	system("pause");

}

void MySQL::Query_2()
{
	string part1 = "select book_order.customer_id, min(book_order.order_date) as date_first from book_order union select store_transaction.customer_id, min(store_transaction.transaction_date) as date_first from store_transaction order by date_first limit 1; ";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The customer that has been with us the longest is: " << row[0] << endl;
	}

	system("pause");
}


void MySQL::Query_3()
{
	string part1 = "select store_book_id, MIN(date_bought) from payments";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The book that has been in stock the longest is: " << row[0] << endl;
	}

	system("pause");
}


void MySQL::Query_4()
{
	string part1 = "select * from book_order";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "order date " << "customer id " << "book id" << endl;
		while (((row = mysql_fetch_row(res_set)) != NULL))
			cout  << row[0] << "\t" << row[1] << "\t" << row[2] << endl;
	}

	system("pause");

}

void MySQL::Query_5()
{
	string part1 = "select count(stock.location) ,stock.location, books.title  from books inner join stock on books.book_id = stock.book_id and books.title = '";
	string part2 = "'and stock.location = 'sold'";
	char input[100];
	cout << "Which book would you like to check?" << endl;
	cin.getline(input, 100);
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The store sold: " << row[0] << " of the book " << input << endl;
	}
	else {
		cout << "The store has not sold this book " << input << row[0] << endl;
	}
	system("pause");
}




void MySQL::Query_6()
{
	string part1 = "SELECT author.forename, author.surname FROM store_transaction INNER JOIN payments INNER JOIN stock INNER JOIN books_author INNER JOIN author WHERE transaction_date BETWEEN'";
	string part2 = "'AND'";
	string part3 = "'AND store_transaction.transaction_id = payments.transaction_id AND payments.store_book_id = stock.store_book_id AND stock.book_id = books_author.book_id AND books_author.author_id = author.author_id GROUP BY stock.book_id having COUNT(stock.book_id) ORDER BY COUNT(stock.book_id) desc limit 1";
	string input1;
	string input2;
	cout << "Please enter the two dates you would like to check between: " << endl << "Start date " << endl;
	cin >> input1;
	cout << "End date " << endl;
	cin >> input2;
	part1 = part1 + input1 + part2 + input2 + part3;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The most popular author between the dates :" << input1 << " to " << input2 << " is: " << row[0] << " " << row[1] << endl;
	}
	
	system("pause");

}


void MySQL::Query_7()
{
	string part1 = "SELECT no_of_books_bought, person.person_id, person.forename, person.surname FROM customer inner join person where person.person_id = customer.person_id order by no_of_books_bought desc LIMIT 3";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {

		cout << "no of books bought" << "person id " << "forename " << "surname " << endl;
		while (((row = mysql_fetch_row(res_set)) != NULL))
			cout << row[0] << "\t" << row[1] << "\t" << row[2] << "\t" << row[3] << endl;
	}
	

	system("pause");
}



void MySQL::Query_8()
{
	string part1 = " select book_id, title from (select distinct book_id, translator from ( select stock.store_book_id, stock.book_id, publication.translator, publication.publication_id, books.title from publication inner join books using(book_id) inner join stock using(publication_id, book_id) where stock.location != 'sold' group by(publication.publication_id) order by(book_id)) as tbl) as tbl2 inner join books using(book_id) group by(book_id) order by count(translator) desc limit 1; ";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << " " << row[0] << " " << row[1] << endl;
	}

	system("pause");
}

void MySQL::Query_9()
{
	string part1 = "select distinct store_transaction.transaction_id, book_prices.retail_price, books.title, store_transaction.transaction_date from customer inner join store_transaction inner join payments inner join person inner join stock inner join books inner join book_prices on person.person_id = customer.person_id and customer.customer_id = store_transaction.customer_id where store_transaction.customer_id = '";
	string part2 = "'and payments.transaction_id = store_transaction.transaction_id and payments.store_book_id = stock.store_book_id and stock.book_id = books.book_id and stock.book_condition = book_prices.book_condition order by store_transaction.transaction_date";
	string input;
	cout << "Please enter customer id: " << endl;
	cin >> input;
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "transaction id " << " retail price " << " title " << "         transaction date " <<  endl;
		while (((row = mysql_fetch_row(res_set)) != NULL))
			cout <<  row[0] <<  "\t" << row[1] <<  "\t" <<  "\t" << row[2] << "\t" << "\t" << row[3] << endl;
	}
	else {
		cout << "The customer does not exiest in the system" << input << row[0] << endl;
	}


	system("pause");
}


void MySQL::Query_10()
{
	string part1 = "select book_order.book_id, book_order.customer_id, book_order.order_date from book_order inner join customer using (customer_id) where customer.customer_id = '";
	string part2 = "'order by order_date desc;";
	string input;
	cout << "Please enter customer id: " << endl;
	cin >> input;
	part1 = part1 + input + part2 ;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "book id" << " customer id " << " order date " << " transaction date" <<endl;
		while (((row = mysql_fetch_row(res_set)) != NULL))
			cout << row[0] << "\t" << row[1] << "\t" <<  row[2]  << endl;
	}

	else {
		cout << "The customer does not have an order history" << row[0] << endl;
	}

	string part3 = "select* from(select book_order.customer_id, book_order.order_date, book_order.book_id from book_order inner join customer where customer.customer_id = '";
	string part4 = "'and customer.customer_id = book_order.customer_id order by order_date desc) as tbl1 inner join (select store_transaction.transaction_date, stock.book_id from store_transaction inner join payments inner join stock where store_transaction.customer_id = '";
	string part5 = "'and store_transaction.transaction_id = payments.transaction_id and payments.store_book_id = stock.store_book_id order by store_transaction.transaction_date desc) as tbl2 using (book_id); ";

	part3 = part3 + input + part4 + input + part5;
	char* all2 = new char[part3.length() + 1];
	strcpy(all2, part3.c_str());
	mysql_query(connect, all2);
	delete[] all2;

	res_set = mysql_store_result(connect);
	
	if (res_set != nullptr && res_set->row_count != 0) {
		while (((row = mysql_fetch_row(res_set)) != NULL))
			cout << row[0] << "\t" << row[1] << "\t" << row[2] << "\t" << row[3] << endl;
	}
	
	else {
		cout << "the customer has not purchased a book he has order" << endl;
	}


	system("pause");
}

void MySQL::Query_11()
{
	char title[100];
	float sum = 0, cost=0;
	int choice = 0, choice2=0;
	cout << "Which books would you like to add? " << endl << "if you are done adding books to the list, press 0." << endl;
	while (1) 
	{
		cout << "Enter book title" << endl;
		cin.getline(title, 100);
		if (title[0] == '0')
			break;
		else
		{
			string part1 = "select publication.weight from books inner join stock using (book_id) inner join publication using (publication_id) where books.title = '";
			string part2 = "'and stock.location != 'sold' limit 1;";
			part1 = part1 + title + part2;
			char* all = new char[part1.length() + 1];
			strcpy(all, part1.c_str());
			mysql_query(connect, all);
			delete[] all;

			res_set = mysql_store_result(connect);
			cout << endl;
			if (res_set != nullptr && res_set->row_count != 0) {
				row = mysql_fetch_row(res_set);
				sum += strtof(row[0], 0);
			}
			else {
				cout << "The book " << title << " is not in stock. " << endl;
			}
		}
	}

	cout << "Which service provider would you like to make the delivery with?" << endl;
	cout << "1. Israel Post" << endl;
	cout << "2. Xpress" << endl;
	cin >> choice;

	switch (choice)
	{
	case 1:
	{
		cout << "1. Registered mail" << endl;
		cout << "2. Messenger mail" << endl;
		cout << "3. Express messenger mail" << endl;
		cin >> choice2;
		break;
	}
	case 2:
	{
		cout << "1. Pick up point" << endl;
		cout << "2. Doorstep delivery" << endl;
		cin >> choice2;
		break;
	}
	default:
		break;
	}

	int IPR = 5, IPM = 8, IPEM = 10, XP = 10, XD = 15;

	int DM = 0;
	if (choice == 1)
	{
		if (choice2 == 1)
			DM = IPR;
		else if (choice2 == 2)
			DM = IPM;
		else
			DM = IPEM;
	}
	else
	{
		if (choice2 == 1)
			DM = XP;
		else if (choice2 == 2)
			DM = XD;
	}

	cost = sum * DM;

	cout << "The cost of your delivery is: " << cost << endl;
	system("pause");
}


void MySQL::Query_12()
{
	string part1 = "select delivery.* from(select store_transaction.transaction_id from store_transaction inner join delivery where delivery.transaction_id = store_transaction.transaction_id and store_transaction.customer_id = '";
	string part2 = "'group by store_transaction.transaction_id having count(store_transaction.transaction_id) > 1) AS trans_id inner join store_transaction using(transaction_id)inner join delivery where store_transaction.transaction_id = delivery.transaction_id";
	string input;
	cout << "Please enter customer id: " << endl;
	cin >> input;
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "transaction id " << "tracking number " << "delivery method " << "service provider " << "total weight\t "<< "delivery cost "<< "address "<<  endl;
		while (((row = mysql_fetch_row(res_set)) != NULL))
			cout << row[0] << "\t\t" <<  row[1] << "\t" << "\t" << row[2] << "\t" <<  row[3] << "\t" <<  row[4] << "\t" <<  row[5] <<  "\t" <<  row[6] << "\t" << row[7] << endl;
	}
	else {
		cout << "The customer has never devided a delivey."  << row[0] << endl;
	}

	system("pause");
}


void MySQL::Query_13()
{
	string part1 = "select delivery.tracking_no, delivery.delivery_status from delivery inner join store_transaction where delivery.tracking_no = '";
	string part2 = " 'and store_transaction.transaction_id = delivery.transaction_id; ";
	string input;
	cout << "Please enter the tracking number: " << endl;
	cin >> input;
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The status is: "  << row[0] <<  " " << row[1] << endl;
	}
	else {
		cout << "The tracking number does not exist." << row[0] << endl;
	}


	system("pause");
}


void MySQL::Query_14()
{
	string part1 = "select sum(delivery.delivery_cost) from delivery inner join store_transaction where month(store_transaction.transaction_date) = '";
	string part2 = "'and delivery.service_provider = 'Xpress'; ";
	string input;
	cout << "Please enter desired month: " << endl;
	cin >> input;
	part1 = part1 + input + part2;

	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The sum is: "  << row[0] << endl;
	}
	else {
		cout << "There have been no deliveries made by Xpress this month." << row[0] << endl;
	}


	system("pause");
}


void MySQL::Query_15()
{
	string part1 = "select sum(payment.total_book_cost) from payment inner join store_transaction using (transaction_id) where payment.payment_method = 'bit' and month(store_transaction.transaction_date) = '";
	string part2 = "';";
	string input;
	cout << "Please enter desired month: " << endl;
	cin >> input;
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << row[0] << endl;
	}

	system("pause");
}



void MySQL::Query_16()
{
	string part1 = "select avg(payment.total_book_cost) from store_transaction inner join payment where datediff(store_transaction.transaction_date, now()) < 365 and store_transaction.transaction_id = payment.transaction_id; ";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;
	res_set = mysql_store_result(connect);
	cout << endl;
	string input;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		input = row[0];
	}

	string part2 = "select store_transaction.transaction_id, payment.total_book_cost from store_transaction inner join payment where store_transaction.transaction_id = payment.transaction_id and payment.total_book_cost > ' ";
	string part3 = "'";

	part2 = part2 + input + part3;
	char* all2 = new char[part2.length() + 1];
	strcpy(all2, part2.c_str());
	mysql_query(connect, all2);
	delete[] all2;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "transaction id " << "total book cost " << endl;
		while ((row = mysql_fetch_row(res_set)) != NULL)
			cout << row[0] << "\t\t" << row[1] << endl;
	}
	system("pause");
}


void MySQL::Query_17()
{
	string part1 = "select (select count(store_transaction.transaction_id) from store_transaction inner join delivery where delivery.service_provider = 'Xpress' and datediff(store_transaction.transaction_date, now()) <= 365 and store_transaction.transaction_id = delivery.transaction_id) as Xpress, (select count(store_transaction.transaction_id) from store_transaction inner join delivery where delivery.service_provider = 'Israel Post' and datediff(store_transaction.transaction_date, now()) <= 365 and store_transaction.transaction_id = delivery.transaction_id) as Israel_Post;";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "Xpress " << "Israel Post "  << endl;
		while ((row = mysql_fetch_row(res_set)) != NULL)
			cout << row[0] << "\t" << row[1] << endl;
	}

	system("pause");
}
void MySQL::Query_18()
{
	string part1 = "SELECT delivery.* FROM(SELECT stock.book_id, delivery.tracking_no, stock.publication_id FROM delivery INNER JOIN store_transaction USING(transaction_id) INNER JOIN payments USING(transaction_id) INNER JOIN stock USING(store_book_id) GROUP BY stock.store_book_id HAVING COUNT(delivery.tracking_no) < 2) AS tbl2 INNER JOIN delivery using (tracking_no) WHERE EXISTS(SELECT tbl.* FROM(SELECT stock.book_id, delivery.tracking_no, stock.publication_id FROM delivery INNER JOIN store_transaction USING(transaction_id) INNER JOIN payments USING(transaction_id) INNER JOIN stock USING(store_book_id)GROUP BY stock.store_book_id HAVING COUNT(delivery.tracking_no) < 2) AS tbl WHERE book_id = tbl2.book_id AND tracking_no = tbl2.tracking_no AND publication_id != tbl2.publication_id) GROUP BY tracking_no;";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "transaction id " << "tracking no " << " delivery status " << "delivery method " << "service provider " << "total weight " << "delivery cost " << "address " << endl;
		cout << row[0] << "\t\t" << row[1] << "\t\t" << row[2] << "\t" << row[3] << "\t" << row[4] << "\t" << row[5] << "\t" << row[6] << "\t" << row[7] << endl;
	}
	else
		cout << "There has never been a delivery with 2 or more publication on the same book" << endl;
	system("pause");
}


void MySQL::Query_19()
{
	string part1 = "select person.*, phone_number.phone_no from store_transaction inner join customer using(customer_id) inner join person using(person_id) inner join person_phone_number using(person_id) inner join phone_number using(phone_id) where datediff(now(), store_transaction.transaction_date) > 730 group by store_transaction.customer_id;";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "person id\t " << "address\t " << "forename\t " << "surname\t " << "phone number\t " << endl;
		while ( (row = mysql_fetch_row(res_set)) != NULL)
			cout << row[0] << "\t" << row[1] << "\t"  << row[2] << "\t" << row[3] << "\t" << row[4] << endl;
	}
	else
		cout << "There is not customer that has purchase a book in the past and hasent done so in to years " << endl;

	system("pause");
}


void MySQL::Query_20()
{
	string part1 = "select book_order.customer_id, books.title, book_order.book_id, book_order.order_date, stock.store_book_id, stock.location, payments.date_bought from book_order inner join books inner join stock inner join payments where book_order.book_id = books.book_id and stock.book_id = books.book_id and stock.location != 'sold' and payments.store_book_id = stock.store_book_id and datediff(now(), payments.date_bought) >= 14;";
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		cout << "customer id " << "title " << "book id " << "order date " << "store book id "<< "location" << "date bought " << endl;
		while ((row = mysql_fetch_row(res_set)) != NULL)
			cout << row[0] << "\t" << row[1] << "\t" << row[2] << "\t" << row[3] << "\t" << row[4] << "\t" << row[5] << "\t" << row[6] << endl;
	}
	

	system("pause");
}



void MySQL::Query_21()
{
	string part1 = "select (select(select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part2 = "-02-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part3 = "-02-01'))as January, (select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part4 = "-03-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part5 = "-03-01'))as Febuary, (select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part6 = "-04-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part7 = "-04-01'))as March, (select(select count(payments.store_book_id) from payments where payments.date_bought < ' ";
	string part8 = "-05-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > ' ";
	string part9 = "-05-01'))as April,(select (select count(payments.store_book_id) from payments where payments.date_bought < ' ";
	string part10 = "-06-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part11 = "-06-01'))as May,(select(select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part12 = "-07-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part13 = "-07-01'))as June,(select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part14 = "-08-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > ' ";
	string part15 = "-08-01'))as July, (select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part16 = "-09-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > ' ";
	string part17 = "-09-01'))as August,(select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part18 = "-10-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > ' ";
	string part19 = "-10-01'))as September,(select(select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part20 = "-11-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > ' ";
	string part21 = "-11-01'))as October,(select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part22 = "-12-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part23 = "-12-01'))as November,(select (select count(payments.store_book_id) from payments where payments.date_bought < '";
	string part24 = "-01-01') - (select count(stock.store_book_id) from stock where stock.storage_exit > '";
	string part25 = "-01-01'))as December;";
	string input1;

	cout << "Please enter desired year: " << endl;
	cin >> input1;
	int input2 = stoi(input1) + 1;
	string input3 = to_string(input2);
	part1 = part1 + input1 + part2 + input1 + part3 + input1 + part4 + input1 + part5 + input1 + part6 + input1 + part7 + input1 + part8 + input1 + part9 + input1 + part10 + input1 + part11 + input1 + part12 + input1 + part13 + input1 + part14 + input1 + part15 + input1 + part16 + input1 + part17 + input1 + part18 + input1 + part19 + input1 + part20 + input1 + part21 + input1 + part22 + input1 + part23 + input1 + part24 + input3 + part25 ;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "January\t" << "Febuary\t " << "March\t " << "April\t " << "May " << "June " << "July " << "August " << "September " << "october " << "November " << "December " << endl;
		cout << row[0] << "\t" << row[1] << "\t" << row[2] << "\t" << row[3] << "\t" << row[4] << "\t" << row[5] << "\t" << row[6] << "\t" << row[7] << "\t" << row[8] << "\t" << row[9] << "\t" << row[10] << "\t" << row[11] << "\t" << endl;

	}
	system("pause");
}


void MySQL::Query_22()
{
	string part1 = "select count(*), sum(book_prices.purchase_price) as total_price from payments inner join stock inner join book_prices where payments.date_bought between '";
	string part2 = "' and '";
	string part3 = "'and payments.store_book_id = stock.store_book_id and stock.book_condition = book_prices.book_condition; ";
	string input1;
	string input2;
	cout << "Please enter the two dates you would like to check between: " << endl << "Start date: " << endl;
	cin >> input1;
	cout << "End date: " << endl;
	cin >> input2;
	part1 = part1 + input1 + part2 + input2 + part3;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The number of books purchased between these dates is: " << row[0] << " and their total price was: "<< row[1] << endl;

	}
	else {
		cout << "There were no book purchased between these dates." << row[0] << endl;
	}
	system("pause");
}



void MySQL::Query_23()
{
	string part1 = "select sum(book_prices.retail_price) - (select sum(book_prices.purchase_price) from payments inner join stock inner join book_prices where month(payments.date_bought) = '";
	string part2 = "'and year(payments.date_bought) = '2020' and payments.store_book_id = stock.store_book_id and stock.book_condition = book_prices.book_condition) as Profit from store_transaction inner join payments inner join stock inner join book_prices where month(store_transaction.transaction_date) = '";
	string part3 = "'and year(store_transaction.transaction_date) = '2020' and store_transaction.transaction_id = payments.transaction_id and payments.store_book_id = stock.store_book_id and stock.book_condition = book_prices.book_condition;";
	string input;
	
	cout << "Please enter desired month: "  << endl;
	cin >> input;

	part1 = part1 + input + part2 + input + part3;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		for (int i = 0 ;i<1; i++)
			if(row[i] == NULL)
				row[i] ="0";
		cout << "The profit is: " << row[0] << endl;
	}
	else {
		cout << "There was no profit during this month" << endl;
	}

	system("pause");
}


void MySQL::Query_24()
{
	string part1 = "select (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 1 and year(store_transaction.transaction_date) = '";
	string part2 = "'and store_transaction.transaction_id = payment.transaction_id) as January, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 2 and year(store_transaction.transaction_date) = '";
	string part3 = "'and store_transaction.transaction_id = payment.transaction_id) as Febuary, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 3 and year(store_transaction.transaction_date) = '";
	string part4 = "'and store_transaction.transaction_id = payment.transaction_id) as March, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 4 and year(store_transaction.transaction_date) = '";
	string part5 = "'and store_transaction.transaction_id = payment.transaction_id) as April, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 5 and year(store_transaction.transaction_date) = '";
	string part6 = "'and store_transaction.transaction_id = payment.transaction_id) as May, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 6 and year(store_transaction.transaction_date) = '";
	string part7 = "'and store_transaction.transaction_id = payment.transaction_id) as June, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 7 and year(store_transaction.transaction_date) = ' ";
	string part8 = " 'and store_transaction.transaction_id = payment.transaction_id) as July, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 8 and year(store_transaction.transaction_date) = '";
	string part9 = " 'and store_transaction.transaction_id = payment.transaction_id) as August, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 9 and year(store_transaction.transaction_date) = '";
	string part10 = " 'and store_transaction.transaction_id = payment.transaction_id) as September, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 10 and year(store_transaction.transaction_date) = '";
	string part11 = " 'and store_transaction.transaction_id = payment.transaction_id) as October,(select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 11 and year(store_transaction.transaction_date) = '";
	string part12 = "'and store_transaction.transaction_id = payment.transaction_id) as November, (select avg(payment.total_book_cost) from store_transaction inner join payment where month(store_transaction.transaction_date) = 12 and year(store_transaction.transaction_date) = ' ";
	string part13 = "'and store_transaction.transaction_id = payment.transaction_id) as December; ";
	string input1;

	cout << "Please enter desired year: " << endl;
	cin >> input1;

	part1 = part1 + input1 + part2 + input1 + part3 + input1 + part4 + input1 + part5 + input1 + part6 + input1 + part7 + input1 + part8 + input1 + part9 + input1 + part10 + input1 + part11 + input1 + part12 + input1 + part13;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);

		for (int i = 0; i < 12; i++)
			if (row[i] == NULL)
				row[i] = "0";
		cout << "January\t" << "Febuary\t " << "March\t " << "April\t " << "May " << "June " << "July " << "August " << "September " << "october " << "November " << "December " << endl;
		cout << row[0] << "\t" << row[1] << "\t" << row[2] << "\t" << row[3] << "\t" << row[4] << "\t" << row[5] << "\t" << row[6] << "\t" << row[7] << "\t" << row[8] << "\t" << row[9] << "\t" << row[10] << "\t" << row[11] << "\t" << endl;
	}
	else
		cout << "" << endl;
	system("pause");
}



void MySQL::Query_25()
{
	string part1 = "SELECT  salary.monthly_hours * 40 as Total FROM salary inner join employee inner join person where salary.employee_id = '";
	string part2 = "'and month(salary.monthly_payments) = '";
	string part3 = "'and employee.employee_id = salary.employee_id and employee.person_id = person.person_id; ";
	string input1;
	string input2;
	cout << "Please enter employee id: " << endl;
	cin >> input1;
	cout << "Please enter month: " << endl;
	cin >> input2;
	part1 = part1 + input1 + part2 + input2 + part3;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The salary for employee " << input1 << " for " << input2 << " is: " << row[0] << endl;
	}
	

	system("pause");
}



void MySQL::Query_26()
{
	string part1 = "select store_transaction.employee_id, person.person_id, person.forename, person.surname, count(store_transaction.employee_id) from store_transaction inner join employee inner join person where month(store_transaction.transaction_date) = '";
	string part2 = "'and store_transaction.employee_id = employee.employee_id and employee.person_id = person.person_id having count(store_transaction.employee_id) limit 1; ";
	string input;

	cout << "Please enter the month " << endl;
	cin >> input;
	
	part1 = part1 + input + part2;
	char* all = new char[part1.length() + 1];
	strcpy(all, part1.c_str());
	mysql_query(connect, all);
	delete[] all;

	res_set = mysql_store_result(connect);
	cout << endl;
	if (res_set != nullptr && res_set->row_count != 0) {
		row = mysql_fetch_row(res_set);
		cout << "The employee with the most sales in " << input << " is: " << row[0] << endl;
	}
	
	system("pause");
}


