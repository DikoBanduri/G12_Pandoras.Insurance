using System;
using System.Data;

namespace DatabaseHelper.Abstraction
{
    public abstract class Database<TConnection, TCommand, TDataReader> : IDisposable
           where TConnection : IDbConnection, new()
           where TCommand : IDbCommand, new()
           where TDataReader : IDataReader
    {
        private readonly string _connectionString;
        private TConnection _connection;
        private IDbTransaction _transaction;

        public Database(string connectionString) =>
            _connectionString = connectionString ?? throw new ArgumentNullException(nameof(connectionString));

        public string ConnectionString => _connectionString;

        public TConnection GetConnection()
        {
            if (_connection == null)
            {
                _connection = new TConnection();
                _connection.ConnectionString = _connectionString;
            }

            return _connection;
        }

        public void OpenConnection()
        {
            var connection = GetConnection();
            if (connection.State != ConnectionState.Open)
            {
                connection.Open();
            }
        }

        public void BeginTransaction()
        {
            if (_transaction != null)
            {
                throw new InvalidOperationException("Transaction is already running.");
            }

            OpenConnection();
            _transaction = GetConnection().BeginTransaction();
        }

        public void CommitTransaction()
        {
            if (_transaction == null)
            {
                throw new InvalidOperationException("Transaction is not running.");
            }

            _transaction.Commit();
            _transaction = null;
        }

        public void RollbackTransaction()
        {
            if (_transaction == null)
            {
                return;
            }

            _transaction.Rollback();
            _transaction = null;
        }

        public void CloseConnection()
        {
            var connection = GetConnection();
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
        }

        public TCommand GetCommand(string commandText, CommandType commandType, params IDataParameter[] parameters)
        {
            if (commandText == null) throw new ArgumentNullException(nameof(commandText));
            if (parameters == null) throw new ArgumentNullException(nameof(parameters));

            TCommand command = new TCommand { Connection = GetConnection() };
            command.CommandText = commandText;
            command.CommandType = commandType;
            command.Transaction = _transaction;

            foreach (var parameter in parameters)
            {
                command.Parameters.Add(parameter);
            }

            return command;
        }

        public TCommand GetCommand(string commandText, params IDataParameter[] parameters) =>
            GetCommand(commandText, CommandType.Text, parameters);

        public int ExecuteNonQuery(string commandText, CommandType commandType, params IDataParameter[] parameters)
        {
            IDbCommand command = GetCommand(commandText, commandType, parameters);

            OpenConnection();
            return command.ExecuteNonQuery();
        }

        public int ExecuteNonQuery(string commandText, params IDataParameter[] parameters) =>
            ExecuteNonQuery(commandText, CommandType.Text, parameters);

        public object ExecuteScalar(string commandText, CommandType commandType, params IDataParameter[] parameters)
        {
            TCommand command = GetCommand(commandText, commandType, parameters);

            OpenConnection();
            return command.ExecuteScalar();
        }

        public object ExecuteScalar(string commandText, params IDataParameter[] parameters) =>
            ExecuteScalar(commandText, CommandType.Text, parameters);

        public TDataReader ExecuteReader(string commandText, CommandType commandType, params IDataParameter[] parameters)
        {
            TCommand command = GetCommand(commandText, commandType, parameters);

            OpenConnection();
            return (TDataReader)command.ExecuteReader();
        }

        public object ExecuteReader(string commandText, params IDataParameter[] parameters) =>
            ExecuteReader(commandText, CommandType.Text, parameters);

        public DataTable GetTable(string commandText, CommandType commandType, params IDataParameter[] parameters)
        {
            DataTable table = new DataTable();
            table.Load(ExecuteReader(commandText, commandType, parameters));
            return table;
        }

        public DataTable GetTable(string commandText, params IDataParameter[] parameters) =>
            GetTable(commandText, CommandType.Text, parameters);

        public void Dispose() => _connection?.Close();
    }
}
