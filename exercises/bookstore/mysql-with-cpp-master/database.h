/*
 * ===================================================================
 *
 *       Filename:  database.h
 *
 *    Description:  Declaring MySQL class for using database.
 *
 *        Created:  Friday 22 February 2013 12:48:40  IST
 *       Compiler:  gcc
 *
 *         Author:  Mandeep Kaur, meghasimak@gmail.com
 *        License:  GNU General Public License
 *      Copyright:  Copyright (c) 2013, Great Developers
 *
 * ===================================================================
 */

/**-------------------------------------------------------------------
 *  Include database-detail.h and other files
 *------------------------------------------------------------------*/

#include "header.h"
#include "database-detail.h"

/**
 * ===================================================================
 *        Class:  MySQL
 *  Description:  MySQL class for database accessability
 * ===================================================================
 */

class MySQL
{
    protected:
        /** MySQL connectivity Variables */
        MYSQL *connect;
        MYSQL_RES *res_set;
        MYSQL_ROW row;

        unsigned int i;

    public:
        /** MySQL Constructor */
        MySQL();

        /** Function to show tables in database */
        void ShowTables();
		void Query_1();
		void Query_2();
		void Query_3();
		void Query_4();
		void Query_5();
		void Query_6();
		void Query_7();
		void Query_8();
		void Query_9();
		void Query_10();
		void Query_11();
		void Query_12();
		void Query_13();
		void Query_14();
		void Query_15();
		void Query_16();
		void Query_17();
		void Query_18();
		void Query_19();
		void Query_20();
		void Query_21();
		void Query_22();
		void Query_23();
		void Query_24();
		void Query_25();
		void Query_26();

        /** MySQL Destructor */
        ~MySQL();
};
