using ApiRest.Contexto;
using ApiRest.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.Data.SqlClient;
using System.Security.Cryptography;
using System.IO;

namespace ApiRest.Services
{
    public class UsuariosServicesSQL:IUsuariosServices
    {
        private dbBancos dbBancos;
        static readonly string password = "P455W0rd";
        public UsuariosServicesSQL(dbBancos dbBancos)
        {
            this.dbBancos = dbBancos;
        }


        public static string Encrypt(string plainText)
        {
            if (plainText == null)
            {
                return null;
            }
            // Get the bytes of the string
            var bytesToBeEncrypted = System.Text.Encoding.UTF8.GetBytes(plainText);
            var passwordBytes = System.Text.Encoding.UTF8.GetBytes(password);

            // Hash the password with SHA256
            passwordBytes = System.Security.Cryptography.SHA512.Create().ComputeHash(passwordBytes);

            var bytesEncrypted = Encrypt(bytesToBeEncrypted, passwordBytes);

            return Convert.ToBase64String(bytesEncrypted);
        }

        // <summary>
        // Decrypt a string.
        // </summary>
        // <param name="encryptedText">String to be decrypted</param>
        // <exception cref="FormatException"></exception>
        public static string Decrypt(string encryptedText)
        {
            if (encryptedText == null)
            {
                return null;
            }
            // Get the bytes of the string
            var bytesToBeDecrypted = Convert.FromBase64String(encryptedText);
            var passwordBytes = System.Text.Encoding.UTF8.GetBytes(password);

            passwordBytes = System.Security.Cryptography.SHA512.Create().ComputeHash(passwordBytes);

            var bytesDecrypted = Decrypt(bytesToBeDecrypted, passwordBytes);

            return System.Text.Encoding.UTF8.GetString(bytesDecrypted);
        }

        private static byte[] Encrypt(byte[] bytesToBeEncrypted, byte[] passwordBytes)
        {
            byte[] encryptedBytes = null;
            var saltBytes = new byte[] { 1, 2, 3, 4, 5, 6, 7, 8 };

            using (System.IO.MemoryStream ms = new MemoryStream())
            {
                using (System.Security.Cryptography.RijndaelManaged AES = new RijndaelManaged())
                {
                    var key = new System.Security.Cryptography.Rfc2898DeriveBytes(passwordBytes, saltBytes, 1000);

                    AES.KeySize = 256;
                    AES.BlockSize = 128;
                    AES.Key = key.GetBytes(AES.KeySize / 8);
                    AES.IV = key.GetBytes(AES.BlockSize / 8);

                    AES.Mode = CipherMode.CBC;

                    using (var cs = new CryptoStream(ms, AES.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(bytesToBeEncrypted, 0, bytesToBeEncrypted.Length);
                        cs.Close();
                    }

                    encryptedBytes = ms.ToArray();
                }
            }

            return encryptedBytes;
        }

        private static byte[] Decrypt(byte[] bytesToBeDecrypted, byte[] passwordBytes)
        {
            byte[] decryptedBytes = null;
            var saltBytes = new byte[] { 1, 2, 3, 4, 5, 6, 7, 8 };

            using (MemoryStream ms = new MemoryStream())
            {
                using (RijndaelManaged AES = new RijndaelManaged())
                {
                    var key = new Rfc2898DeriveBytes(passwordBytes, saltBytes, 1000);

                    AES.KeySize = 256;
                    AES.BlockSize = 128;
                    AES.Key = key.GetBytes(AES.KeySize / 8);
                    AES.IV = key.GetBytes(AES.BlockSize / 8);
                    AES.Mode = CipherMode.CBC;

                    using (var cs = new CryptoStream(ms, AES.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(bytesToBeDecrypted, 0, bytesToBeDecrypted.Length);
                        cs.Close();
                    }

                    decryptedBytes = ms.ToArray();
                }
            }

            return decryptedBytes;
        }
        public Usuarios Actualizar(Usuarios dto)
        {
            dbBancos.Usuarios.Update(dto);
            dbBancos.SaveChanges();
            return dto;
        }

        public Usuarios Eliminar(Usuarios dto)
        {
            throw new NotImplementedException();
        }

        public Usuarios Insert(Usuarios dto)
        {
            dbBancos.Usuarios.Add(dto);
            dbBancos.SaveChanges();
            return dto;
        }

        public String Listar(string dto)
        {
            String peer = dbBancos.Usuarios.FromSqlRaw($"SELECT * from Usuarios").ToString();
            try
            {
                var user = new SqlParameter("cc", dto);
                var query = dbBancos.Usuarios.FromSqlRaw($"SELECT * from Usuarios where cedula=@cc", user).ToString();

                peer = Encrypt(query);
            }
            catch
            { }



            return peer;

        }
        public List<Usuarios> Imprime()
        {
            var query = dbBancos.Usuarios.ToList();
            string clave = query[0].clave;

            return query;

        }
        public List<Usuarios> LCuenta(string dto)
        {
            List<Usuarios> peer = dbBancos.Usuarios.FromSqlRaw($"SELECT * from Usuarios").ToList();
            try
            {
                var user = new SqlParameter("cc", dto);
                var query = dbBancos.Usuarios.FromSqlRaw($"SELECT * from Usuarios where cuenta=@cc", user).ToList();
                string clave = query[0].clave;
                peer = query;
            }
            catch
            {
                
            }


            return peer;

        }

        public Usuarios Recuperar(Usuarios dto)
        {
            throw new NotImplementedException();
        }

        public String Login(string dto)
        {
            string clave = "";
            try
            {
                var user = new SqlParameter("cc", dto);
                var query = dbBancos.Usuarios.FromSqlRaw($"SELECT * from Usuarios where cedula=@cc", user).ToList();
                clave = query[0].clave;
                
            }
            catch
            {
                Console.WriteLine("ERROR");
            }
            return clave;


        }

        public String Roles(string dto)
        {
            string clave = "";
            try
            {
                var user = new SqlParameter("cc", dto);
                var query = dbBancos.Usuarios.FromSqlRaw($"SELECT * from Usuarios where cedula=@cc", user).ToList();
                clave = query[0].rol;
            }
            catch
            {
                
            }

            return clave;

        }

    }
}
