using System;
using System.Xml.Xsl;
using System.Xml;
using System.IO;

namespace xml2json
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                // Load the XSLT sheet
                var xslt = new XslCompiledTransform();
                xslt.Load("D:\\XSLTGeneric.xslt");

                // Load the XML data
                var xml = new XmlDocument();
                xml.Load("D:\\toc_xml.xml");

                // Transform the XML data using the XSLT sheet
                using (TextWriter writer = new StreamWriter("D:\\output.json"))
                {
                    xslt.Transform(xml, null, writer);
                }
            } catch(Exception e)
            {
                e = e;
            }
        }
    }
}
