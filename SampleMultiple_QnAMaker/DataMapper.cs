using Microsoft.Office.Interop.Excel;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;

namespace SampleMultiple_QnAMaker
{
    public class DataMapper
    {

       private string  path = @"c:\\users\\jnimmagadda\\documents\\visual studio 2017\\Projects\\SampleMultiple_QnAMaker\\SampleMultiple_QnAMaker\\FAQSheet\\jimmyqna.xlsx";
       
        public List<string> LstQuestions { get; set; }
        public bool SaveExcelDataToDB()
        {
            try
            {

               var xlApp = new Application();
                var xlWorkbook = xlApp.Workbooks.Open(path);
                var xlWorksheet = xlWorkbook.Sheets[1];
                var xlRange = xlWorksheet.UsedRange;

                int rowCount = xlRange.Rows.Count;
                int colCount = xlRange.Columns.Count;
                List<string> lstQuestionList = new List<string>();
                for (int i = 2; i <= rowCount; i++)
                {
                    var question =  xlRange.Cells[i,1].Value2.ToString();
                    lstQuestionList.Add(question);
                    
                }

                GC.Collect();
                GC.WaitForPendingFinalizers();

                Marshal.ReleaseComObject(xlRange);
                Marshal.ReleaseComObject(xlWorksheet);

                //close and release
                xlWorkbook.Close();
                Marshal.ReleaseComObject(xlWorkbook);
                
                foreach (var item in lstQuestionList)
                {
                    SqlParameter[] sParams = new SqlParameter[26];
                    var itemarray = item.Split(' ');

                    for (int i = 0; i <= 25; i++)
                    {
                        // Parameter count

                        sParams[i] = new SqlParameter();
                        sParams[i].SqlDbType = SqlDbType.NVarChar;
                        sParams[i].ParameterName = "@Param"+(i+1).ToString();
                        sParams[i].IsNullable = true;
                        if (i < itemarray.Length)
                            sParams[i].Value = itemarray[i];
                        else
                            sParams[i].Value = DBNull.Value;
                        if (i == 25)
                        {
                            sParams[i].Value = item;
                        }

                         


                    }

                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                    {
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand commd = new SqlCommand()
                        {
                            Connection = con,
                            CommandType = System.Data.CommandType.StoredProcedure,
                            CommandText = "INSQuestions"
                        };

                        foreach (SqlParameter sParam in sParams)
                        {
                            commd.Parameters.Add(sParam);
                        }
                        commd.ExecuteNonQuery();

                    }
                }
            }
            catch (Exception ex)
            {
            }

            return true;
        }

        public bool IsDataAvaliable()
        {
            var result =false;
            DataSet ds = new DataSet();
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand commd = new SqlCommand("select * from QuestionsAndAnswers");
                commd.Connection = con;
                commd.CommandType = System.Data.CommandType.Text;
                SqlDataAdapter adptador = new SqlDataAdapter(commd);
                adptador.Fill(ds);
                result = ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0;  

            }
            return result;

        }

        public IEnumerable<string> GetQuestions(string message)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    con.Open();
                    SqlCommand commd = new SqlCommand();
                    commd.Connection = con;
                    commd.CommandType = System.Data.CommandType.StoredProcedure;
                    commd.CommandText = "GetQuestions";
                    commd.Parameters.AddWithValue("@Param1", message);
                  
                    SqlDataAdapter da = new SqlDataAdapter(commd);
                    da.Fill(ds);
                   return ds.Tables[0].AsEnumerable().Select(row=>row["Question"].ToString());
                    
                    //while (dr.Read())
                    //{
                    //    LstQuestions.Add(dr.GetValue(0).ToString());
                    //}
                }
            }
            catch (Exception ex)
            {

            }
            return null;
        }

        public bool CheckQuestions(string message)
        {
            DataSet ds = new DataSet();
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
                {
                    con.Open();
                    SqlCommand commd = new SqlCommand();
                    commd.Connection = con;
                    commd.CommandType = System.Data.CommandType.StoredProcedure;
                    commd.CommandText = "CheckQuestions";
                    commd.Parameters.AddWithValue("@Param1", message);

                    SqlDataAdapter da = new SqlDataAdapter(commd);
                    da.Fill(ds);
                    return ds.Tables.Count>0 && ds.Tables[0].Rows.Count==1;
                }
            }
            catch (Exception ex)
            {

            }
            return false;
        }

        public string GetQAndAMaker(string text)
        {

            string responseString = string.Empty;
            var knowledgebaseId = "909b2735-b5af-45fc-a196-633a8074ec37";
            Uri qnamakerUriBase = new Uri("https://westus.api.cognitive.microsoft.com/qnamaker/v2.0");
            var builder = new UriBuilder($"{qnamakerUriBase}/knowledgebases/{knowledgebaseId}/generateAnswer");
            var qnamakerSubscriptionKey = "852418a032ce4a7cb26c6448b647addc";

            var postBody = $"{{\"question\": \"{text}\"}}";

            using (WebClient client = new WebClient())
            {
                //Set the encoding to UTF8
                client.Encoding = System.Text.Encoding.UTF8;

                //Add the subscription key header
                client.Headers.Add("Ocp-Apim-Subscription-Key", qnamakerSubscriptionKey);
                client.Headers.Add("Content-Type", "application/json");
                responseString = client.UploadString(builder.Uri, postBody);
                //JObject o = JObject.Parse(responseString);
                //o.SelectToken("answers").Values("answer");
                responseString = JsonConvert.DeserializeObject<RootObject>(responseString).answers.FirstOrDefault().answer;
            }

            return responseString;

        }
    }
}