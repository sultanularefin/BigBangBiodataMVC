using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BiodataArefin.EF;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using BiodataArefin.Models;

namespace BiodataArefin.Controllers
{
    public class HomeController : Controller
    {

        EF1 context = new EF1();

        public string filepathfinal=System.Web.HttpContext.Current.Server.MapPath("~/employeeDtlsData/EmployeeDetailsData.json");


        //System.Web.Hosting.HostingEnvironment.MapPath(path);

        private List<SelectReligion> GetAllReligions()
        {
            List<SelectReligion> AllProjects = new List<SelectReligion>();
            //List<selectCourseCategory> AllCourseCategories = new List<selectCourseCategory>();

            AllProjects = context.Religion_info.Select(x => new SelectReligion { id = x.id, Religionname = x.religionName }).ToList();

            //AllDesignations = context.Designations.ToList();
            return AllProjects;

        }
        public ActionResult Index()
        {
            return View();
        }



        public int duplicateCheck(string Exam_department)
        {
            var result = ReadFromJsonFile(filepathfinal);

            if (result != null)
            {
                foreach (EmployeeDtl aEmplpyeeDtl in result)
                {
                    if (Exam_department == aEmplpyeeDtl.examORDepartment)
                    {

                        return -1;
                    }

                }
            }

            return 1;
        }


        public JsonResult storeEmployeeDetailsByEmployeeID(string Exam_department, string Institute_University_Board, short PassingYear, String Grade)
        {
            EmployeeDtl aEmployeeDetail = new EmployeeDtl();
            var contentType = "application/json";
            if (duplicateCheck(Exam_department)==-1)
            {
               
                // converts sent data to null and  returns null; no writing now.; 

                return Json(aEmployeeDetail, contentType);
            }

            //return Content("<script language='javascript' type='text/javascript'>alert('Hello world!');</script>");


            //EmployeeDtl aEmployeeDetail = new EmployeeDtl();

            //aEmployeeDetail.id = tempEmpId;
            aEmployeeDetail.examORDepartment = Exam_department;
            aEmployeeDetail.instituteUniBoard = Institute_University_Board;
            aEmployeeDetail.passingYear = PassingYear;
            aEmployeeDetail.grade = Grade;

            //Stream WriteStream = new FileStream(filepathfinal, FileMode.OpenOrCreate, FileAccess.Write, FileShare.None);
            //WriteStream.Close();

            //if (File.Exists(Server.MapPath("~/employeeDtlsData/EmployeeDetailsData.json")))
            //{
            //    File.Create(path);
            //    TextWriter tw = new StreamWriter(path);
            //    tw.WriteLine("The very first line!");
            //    tw.Close();
            //}

            WriteToJsonFile(filepathfinal, aEmployeeDetail);

            List<EmployeeDtl> allEmployeeDtls = new List<EmployeeDtl>();

            var result= ReadFromJsonFile(filepathfinal);


            var response_data = result;

            //var contentType = "application/json";

            return Json(response_data, contentType);

        }


        public static void WriteToJsonFile<T>(string filePath, T objectToWrite, bool append = true) where T : new()
        {

            var result = ReadFromJsonFile(filePath);

            TextWriter writer = null;
            try
            {
                
                //var contentsToWriteToFile = Newtonsoft.Json.JsonConvert.SerializeObject(objectToWrite);



                if (result == null)
                {
                    string json = JsonConvert.SerializeObject(objectToWrite);
                    json = "["+json + "]";
                    writer = new StreamWriter(filePath, append);
                    writer.Write(json);
                }
                else
                {
                    string previousData=JsonConvert.SerializeObject(result);
                    previousData = previousData.Replace(']', ',');
                    previousData = previousData.Remove(0,1);

                    string newdata = JsonConvert.SerializeObject(objectToWrite);
                    //newdata = newdata.Remove(0, 1);
                    //newdata = newdata.Replace(']', ',');

                    string finaldata ="["+ previousData  + newdata + "]";
                    writer = new StreamWriter(filePath,append=false);
                    writer.Write(finaldata);
                }


               
            }
            finally
            {
                if (writer != null)
                    writer.Close();
            }

        }

        public static List<EmployeeDtl> ReadFromJsonFile(string filePath)
        {
            List<EmployeeDtl> allEmployeeDtls = new List<EmployeeDtl>();
            //var fileContents;
            TextReader reader = null;
            try
            {
                reader = new StreamReader(filePath);
                string fileContents = reader.ReadToEnd();

                //List<EmployeeDtl> allEmployeeDtls = new List<EmployeeDtl>();

                //JsonConvert.DeserializeObject<List<T>>()
                allEmployeeDtls = JsonConvert.DeserializeObject<List<EmployeeDtl>>(fileContents);

                //System.IO.File.WriteAllText(System.Web.HttpContext.Current.Server.MapPath("~/employeeDtlsData/EmployeeDetailsData.json"),string.Empty);

                
                //System.Web.HttpContext.Curren
                //System.Web.HttpContext.Current.Server.MapPath("~/employeeDtlsData/EmployeeDetailsData.json");

                //int result = 1;

                return allEmployeeDtls;
            }
            finally
            {
                if (reader != null)
                    reader.Close();
            }


            
        }

        public ActionResult AddEmployee()
        {
            var selectallReligions = GetAllReligions();
            ViewBag.selectallReligions = new SelectList(selectallReligions, "id", "Religionname");


            System.IO.File.WriteAllText(filepathfinal, string.Empty);
            

            return View();
        }


        [HttpPost]

        public ActionResult AddEmployee(Employee aEmployee)
        {


            var selectallReligions = GetAllReligions();


            ViewBag.selectallReligions = new SelectList(selectallReligions, "id", "Religionname");
            ViewBag.success = 0;

            ViewBag.message = null;
            if (ModelState.IsValid)
            {

                int maxId = context.Employees.Select(p => p.id).DefaultIfEmpty(0).Max();

                int newMaxId = maxId + 1;
                aEmployee.userId = "2017/00" + newMaxId;

                context.Employees.Add(aEmployee);
                context.SaveChanges();
                int employeeId = aEmployee.id;
                ViewBag.message = "User Insertion Successful";

                ViewBag.success = 1;

                List<EmployeeDtl> allEmployeeDtlsByID = new List<EmployeeDtl>();



                allEmployeeDtlsByID = ReadFromJsonFile(filepathfinal);

                foreach (EmployeeDtl aEmployeeDetail in allEmployeeDtlsByID)
                {
                    //Product newProduct = new Product();
                    aEmployeeDetail.empid = employeeId;

                    context.EmployeeDtls.Add(aEmployeeDetail);
                }

                context.SaveChanges();

               // EmployeeInfoInPDF(employeeId);

                return View(aEmployee);

            }
            else
            {
                ViewBag.message = "Validation Error";
                return View(aEmployee);

            }

        }



        public ActionResult EmployeeInfoInPDF(int? ID)
        {
           

            Employee aEmployee = new Employee();

            aEmployee = context.Employees.Include("Religion_info").Where(x=>x.id==ID).FirstOrDefault();

            //aEmployee = context.Employees.Include(X=>X.;

 
            List<EmployeeDtl> allEmployeeDtlsByID = new List<EmployeeDtl>();


            allEmployeeDtlsByID = context.EmployeeDtls.Where(X => X.empid == ID).ToList();

           
            var builder = new PdfBuilder(aEmployee, Server.MapPath("~/Views/Home/EmployeeInfoInPDF.cshtml"));
            return builder.GetPdf();


        }


        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}