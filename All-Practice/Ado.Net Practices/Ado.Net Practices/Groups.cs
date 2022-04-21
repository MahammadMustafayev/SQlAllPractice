using System;
using System.Collections.Generic;
using System.Text;

namespace Ado.Net_Practices
{
    class Groups
    {
        public static void Create(string fullName)
        {
            Sql.Execute($"INSERT INTO Students VALUES(N'{fullName}')");
        }
        public static void Update(string parametr)
        {
            Sql.Execute($"SELECT * FROM Students WHERE FullName like '{parametr}'");
        }
        public static void GetById(int id)
        {
            Sql.Select($"SELECT * FROM Students WHERE Id={id}");
        }
        public static void GetAll()
        {
            Sql.Select($"SELECT * FROM Students");
        }
    }
}
