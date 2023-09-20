using DatabaseHelper.Abstraction;
using Microsoft.Data.SqlClient;

namespace DatabaseHelper.SqlClient
{
    public sealed class SqlDatabase : Database<SqlConnection, SqlCommand, SqlDataReader>
    {
        public SqlDatabase(string connectionString) : base(connectionString)
        {

        }
    }
}
