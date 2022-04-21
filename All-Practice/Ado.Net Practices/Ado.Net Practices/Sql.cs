using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
namespace Ado.Net_Practices
{
    class Sql
    {
        private static string connectionString = @"Server=213-2;Database=Groups;Trusted_Connection=True;";
        public static void Select(string query)
        {
            using (SqlConnection con=new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlDataAdapter sda = new SqlDataAdapter(query,con))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    foreach (DataRow dataRow in dt.Rows)
                    {
                        string result = "";
                        for (int i = 0; i < dt.Columns.Count; i++)
                        {
                            result += dataRow[i] + " ";
                        }
                        Console.WriteLine(result);
                    }
                }
            }
        }
        public static void Execute(string query)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                using (SqlCommand sdt = new SqlCommand(query,con))
                {
                    try
                    {
                       if (sdt.ExecuteNonQuery() > 0)
                       {

                       }
                       else
                       {
                        Console.WriteLine("Wrong");
                       }

                    }
                    catch (Exception)
                    {
                        Console.WriteLine("Something wrong");
                    }
                }
            }
        }
    }
}
