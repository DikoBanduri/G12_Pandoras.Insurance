using System;
using Pandoras.Insurance.DTO;
using Pandoras.Insurance.Repositories;

namespace Pandoras.Insurance.Tests
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //string connectionString = @"Server = '94.137.160.39'; Database = PadnorasInsurance; user=sa; password=D123123d; Integrated Security = false; ";
            //string connectionString = @"Data Source=DESKTOP-PKI87FL;Initial Catalog=Pandoras.Insurance.Database;Integrated Security=false;TrustServerCertificate = True";
            string connectionString = @"Server=.;Database=MylocalDatabaseFortests;User Id=NC;Password=111;Integrated Security=false;Encrypt=True;TrustServerCertificate=True";

            CarRepository carRepository = new CarRepository(connectionString);
            carRepository.Insert(new Car()
            {
                LicensePlate = "1234",
                EngineSize = "2.1",
                PassportNumber = "123456",
                Vin = 1,
                CreateDate = new DateTime(2001, 9, 2),
                Mileage = "120"
            });
        }
    }
}
