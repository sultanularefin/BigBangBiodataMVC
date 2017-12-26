using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BiodataArefin.EF
{
    [Serializable]
    public class EmpDetailsSerializable
    {

        [JsonProperty("id")]
        public int id { get; set; }

        [JsonProperty("examORDepartment")]
        public string examORDepartment { get; set; }

        [JsonProperty("instituteUniBoard")]
        public string instituteUniBoard { get; set; }

        [JsonProperty("passingYear")]
        public string passingYear { get; set; }

        [JsonProperty("grade")]
        public double grade { get; set; }

        //public int empid { get; set; }
    }

  
}