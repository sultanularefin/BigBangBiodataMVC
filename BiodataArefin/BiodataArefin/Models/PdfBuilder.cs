using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Text;
using System.Web.Razor;
using RazorEngine;
using iTextSharp;
using RazorEngine.Templating;
using BiodataArefin.EF;

namespace BiodataArefin.Models
{
    public class PdfBuilder
    {


        Employee aEmployee = new Employee();
        private readonly Employee _aEmployee;

        private readonly string _file;

        public PdfBuilder(Employee aEmp, string file)
        {
            _aEmployee = aEmp;
            _file = file;
        }

        public FileContentResult GetPdf()
        {
            var html = GetHtml();
            Byte[] bytes;
            using (var ms = new MemoryStream())
            {
                using (var doc = new Document())
                {
                    using (var writer = PdfWriter.GetInstance(doc, ms))
                    {
                        doc.Open();
                        try
                        {
                            using (var msHtml = new MemoryStream(System.Text.Encoding.UTF8.GetBytes(html)))
                            {
                                iTextSharp.tool.xml.XMLWorkerHelper.GetInstance()
                                    .ParseXHtml(writer, doc, msHtml, System.Text.Encoding.UTF8);
                            }
                        }
                        finally
                        {
                            doc.Close();
                        }
                    }
                }
                bytes = ms.ToArray();
            }
            return new FileContentResult(bytes, "application/pdf");
        }

        private string GetHtml()
        {

            string key = RandomString(8);
            var html = File.ReadAllText(_file);
            //Engine.Razor.Compile("~/Views/Shared/_Layout.cshtml", "layout");
            return Engine.Razor.RunCompile(html, key, typeof(Employee), _aEmployee);

        }

        private static Random random = new Random();

        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }




    }
}


