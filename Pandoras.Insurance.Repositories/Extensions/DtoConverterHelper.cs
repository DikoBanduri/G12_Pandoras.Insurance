using System;
using System.Data;
using Pandoras.Insurance.DTO;

namespace Pandoras.Insurance.Repositories.Extensions
{
    internal static class DtoConverterHelper
    {
        public static Car ToCar(this DataRow row)
        {
            return new Car
            {
                ID = (int)row["ID"],
                CategoryID = (int)row["Category"],
                CreateDate = (DateTime)row["CreateDate"],
                Description = (string)row["Description"],
                ModelID = (int)row["ModelID"],
                EngineSize = (string)row["EngineSize"],
                Vin = (int)row["Vin"],
                IsDeleted = (bool)row["IsDeleted"],
                Mileage = (string)row["Mileage"],
                ProductionDate = (DateTime)row["ProductionDate"],
                LicensePlate = (string)row["LicenssePlate"],
                PassportNumber = (string)row["PassportNumber"]
            };
        }
    }
}
