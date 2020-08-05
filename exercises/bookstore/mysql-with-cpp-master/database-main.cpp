/*
 * ===================================================================
 *
 *       Filename:  database-main.cpp
 *
 *    Description:  Main Method
 *
 *        Created:  Thursday 28 February 2013 10:53:59  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

 /**-------------------------------------------------------------------
  *  \mainpage MySQL Connectivity with C++
  *
  *  This is a working code example of using C++ to interface with MySQL.
  *  Steps:
  *
  *  \li Download this code \n
  *      $ git clone https://github.com/megha55/mysql-with-cpp.git
  *
  *  \li For installing MySQL Connector for C++ \n
  *      $ make install
  *
  *  \li Change database details in database-detail.h file.
  *
  *  \li To run example \n
  *      $ make
  *
  *------------------------------------------------------------------*/

  /**-------------------------------------------------------------------
   *  Include required header files
   *------------------------------------------------------------------*/

#include "database.h"
   //#include <iostream>
   //using namespace std;


int main(void)
{
	MySQL Mysql;

	
	Mysql.ShowTables();

		cout << "Welcome to our book store" << endl;

		while (1)
		{
			cout << "Are you the employer?" << endl;
			cout << "1.  NO" << endl;
			cout << "2.  YES" << endl;
			int employer = 0, choice = 0;
			cin >> employer;
			if (employer == 1)
			{
				while (1)
				{
					cout << "Please choose one of the following options:" << endl;
					cout << "1.  Check if a specific book is in stock" << endl;
					cout << "2.  Find the customer that has been with us the longest" << endl;
					cout << "3.  Find the book that has been in stock the longest" << endl;
					cout << "4.  List of all current orders" << endl;
					cout << "5.  Find the number of copies sold of a specific book" << endl;
					cout << "6.  Find the most popular author between two dates" << endl;
					cout << "7.  List the three customers who've bought the most books" << endl;
					cout << "8.  Find the book with the most translations that is in stock" << endl;
					cout << "9.  List of transaction history of specific customer" << endl;
					cout << "10. List of order history of specific customer" << endl;
					cout << "11. Calculate delivery fee" << endl;
					cout << "12. List of delivery details if specific customer has devided a delivey" << endl;
					cout << "13. Check delivery status for a specific customer" << endl;
					cout << "14. List of customers that haven't made a purchase in two years" << endl;
					cout << "15. List of customers who've ordered a book, been notified it's arrived and haven't bought it" << endl;
					cout << "16. EXIT system" << endl;

					cin >> choice;

					switch (choice)
					{
					case 1:
						Mysql.Query_1();
						break;
					case 2:
						Mysql.Query_2();
						break;
					case 3:
						Mysql.Query_3();
						break;
					case 4:
						Mysql.Query_4();
						break;
					case 5:
						Mysql.Query_5();
						break;
					case 6:
						Mysql.Query_6();
						break;
					case 7:
						Mysql.Query_7();
						break;
					case 8:
						Mysql.Query_8();
						break;
					case 9:
						Mysql.Query_9();
						break;
					case 10:
						Mysql.Query_10();
						break;
					case 11:
						Mysql.Query_11();
						break;
					case 12:
						Mysql.Query_12();
						break;
					case 13:
						Mysql.Query_13();
						break;
					case 14:
						Mysql.Query_19();
						break;
					case 15:
						Mysql.Query_20();
						break;
					case 16:
						return (0);
					default:
						cout << "Please enter a valid choice" << endl;
					}
				}
			}
			else if (employer == 2)
			{
				while (1)
				{
					cout << "Please choose one of the following options:" << endl;
					cout << "1.  Check if a specific book is in stock" << endl;
					cout << "2.  Find the customer that has been with us the longest" << endl;
					cout << "3.  Find the book that has been in stock the longest" << endl;
					cout << "4.  List of all current orders" << endl;
					cout << "5.  Find the number of copies sold of a specific book" << endl;
					cout << "6.  Find the most popular author between two dates" << endl;
					cout << "7.  List the three customers who've bought the most books" << endl;
					cout << "8.  Find the book with the most translations that is in stock" << endl;
					cout << "9.  List of transaction history of specific customer" << endl;
					cout << "10. List of order history of specific customer" << endl;
					cout << "11. Calculate delivery fee" << endl;
					cout << "12. List of delivery details if specific customer has devided a delivey" << endl;
					cout << "13. Check delivery status for a specific customer" << endl;
					cout << "14. Calculate the sum of delivery costs delivered by Xpress in specific month" << endl;
					cout << "15. Calculate the sum of funds transfered to the store by the way of 'Bit' in specific month" << endl;
					cout << "16. List of transactions with higher than average profit in the past year" << endl;
					cout << "17. Find the number of deliveries delivered in the past year by Israel Post and by Xpress" << endl;
					cout << "18. List of deliveries with multiple publications of one book" << endl;
					cout << "19. List of customers that haven't made a purchase in two years" << endl;
					cout << "20. List of customers who've ordered a book, been notified it's arrived and haven't bought it" << endl;
					cout << "21. Calculate the number of book in storage in monthwise cross-section" << endl;
					cout << "22. Find the number of books purchased by the store and their price between two dates" << endl;
					cout << "23. Calculate the store profit in specific month" << endl;
					cout << "24. Calculate the average sum of transaction income by monthwise cross-section" << endl;
					cout << "25. Find the monthly salary of specific employee in a specific month" << endl;
					cout << "26. Find the employee with the most sales in a specific month" << endl;
					cout << "27. EXIT system" << endl;

					cin >> choice;

					switch (choice)
					{
					case 1:
						Mysql.Query_1();
						break;
					case 2:
						 Mysql.Query_2();
						break;
					case 3:
						Mysql.Query_3();
						break;
					case 4:
						Mysql.Query_4();
						break;
					case 5:
						Mysql.Query_5();
						break;
					case 6:
						Mysql.Query_6();
						break;
					case 7:
						Mysql.Query_7();
						break;
					case 8:
						Mysql.Query_8();
						break;
					case 9:
						Mysql.Query_9();
						break;
					case 10:
						Mysql.Query_10();
						break;
					case 11:
						Mysql.Query_11();
						break;
					case 12:
						Mysql.Query_12();
						break;
					case 13:
						Mysql.Query_13();
						break;
					case 14:
						Mysql.Query_14();
						break;
					case 15:
						Mysql.Query_15();
						break;
					case 16:
						Mysql.Query_16();
						break;
					case 17:
						Mysql.Query_17();
						break;
					case 18:
						Mysql.Query_18();
						break;
					case 19:
						Mysql.Query_19();
						break;
					case 20:
						Mysql.Query_20();
						break;
					case 21:
						Mysql.Query_21();
						break;
					case 22:
						Mysql.Query_22();
						break;
					case 23:
						Mysql.Query_23();
						break;
					case 24:
						Mysql.Query_24();
						break;
					case 25:
						Mysql.Query_25();
						break;
					case 26:
						Mysql.Query_26();
						break;
					case 27:
						return (0);
					default:
						cout << "Please enter a valid choice" << endl;
					}
				}
			}
			else
				cout << "Please enter a valid choice" << endl;
		}

	 return 0;
}








