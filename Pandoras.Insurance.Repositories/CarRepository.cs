using System;
using System.Collections.Generic;
using System.Data;
using DatabaseHelper.SqlClient;
using Microsoft.Data.SqlClient;
using Pandoras.Insurance.DTO;
using Pandoras.Insurance.Repositories.Extensions;

namespace Pandoras.Insurance.Repositories
{
    public sealed class CarRepository
    {
        private readonly SqlDatabase _database;

        public CarRepository(string connectionString)
        {
            if (connectionString == null) throw new ArgumentNullException(nameof(connectionString));
            _database = new SqlDatabase(connectionString);
        }

        public Car Get(int id)
        {
            try
            {
                _database.OpenConnection();
                DataTable table = _database.GetTable(
                    "sp_GetCarByID",
                    CommandType.StoredProcedure,
                    new SqlParameter("@ID", id)
                );
                if (table.Rows.Count == 0)
                {
                    throw new KeyNotFoundException(id.ToString());
                }

                return table.Rows[0].ToCar();
            }
            finally
            {
                _database.CloseConnection();
            }
        }

        //TODO: We need to add credential for loading lists.
        public IEnumerable<Car> GetAll()
        {
            try
            {
                _database.OpenConnection();
                DataTable newTable = _database.GetTable(
                    "sp_GetCars",
                    CommandType.StoredProcedure);

                foreach (DataRow row in newTable.Rows)
                {
                    yield return row.ToCar();
                }
            }
            finally
            {
                _database.CloseConnection();
            }
        }

        public int Insert(Car item)
        {
            try
            {
                var paramId = new SqlParameter("@ID", SqlDbType.Int)
                {
                    Direction = ParameterDirection.Output
                };
                _database.OpenConnection();
                _database.ExecuteNonQuery("sp_InsertCars", CommandType.StoredProcedure,
                   paramId,
                   new SqlParameter("@ModelID", item.ModelID),
                   new SqlParameter("@CategoryID", item.CategoryID),
                   new SqlParameter("@LicensePlate", item.LicensePlate),
                   new SqlParameter("@Vin", item.Vin),
                   new SqlParameter("@PassportNumber", item.PassportNumber),
                   new SqlParameter("@EngineSize", item.EngineSize),
                   new SqlParameter("@Mileage", item.Mileage),
                   new SqlParameter("@Description", item.Description)
                );

                return (int)paramId.Value;
            }
            finally
            {
                _database.CloseConnection();
            }
        }

        public void Update(Car item)
        {
            try
            {
                _database.OpenConnection();
                _database.ExecuteNonQuery("sp_UpdateCars", CommandType.StoredProcedure,
                     new SqlParameter("@ID", item.ID),
                     new SqlParameter("@ModelID", item.ModelID),
                     new SqlParameter("@CategoryID", item.CategoryID),
                     new SqlParameter("@LicensePlate", item.LicensePlate),
                     new SqlParameter("@Vin", item.Vin),
                     new SqlParameter("@PassportNumber", item.PassportNumber),
                     new SqlParameter("@EngineSize", item.EngineSize),
                     new SqlParameter("@Mileage", item.Mileage),
                     new SqlParameter("@Description", item.Description)
                 );
            }
            finally
            {
                _database.CloseConnection();
            }
        }

        public void Delete(int id)
        {
            try
            {
                _database.OpenConnection();
                _database.ExecuteNonQuery("sp_DeleteCars", CommandType.StoredProcedure, new SqlParameter("@ID", id));
            }
            finally
            {
                _database.CloseConnection();
            }
        }
    }
}
