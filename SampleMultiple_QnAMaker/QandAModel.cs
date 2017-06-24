using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SampleMultiple_QnAMaker
{
    public class Answer
    {
        public string answer { get; set; }
        public List<string> questions { get; set; }
        public double score { get; set; }
    }

    public class RootObject
    {
        public List<Answer> answers { get; set; }
    }
}