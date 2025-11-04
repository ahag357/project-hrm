using System;
using System.IO;
using System.Linq;
using System.Web;

public class FileUploadHandler : IHttpHandler
{
    private static readonly string[] Allowed = 
        { ".png", ".jpg", ".jpeg", ".gif", ".webp", ".svg" };

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "application/json";

        try
        {
            if (context.Request.Files.Count == 0)
            {
                context.Response.Write("{\"path\":\"\",\"error\":\"No file\"}");
                return;
            }

            HttpPostedFile file = context.Request.Files[0];
            string ext = Path.GetExtension(file.FileName)?.ToLowerInvariant() ?? "";

            if (!Allowed.Contains(ext))
            {
                context.Response.Write("{\"path\":\"\",\"error\":\"Invalid file type\"}");
                return;
            }

            // 2 MB limit (adjust if needed)
            if (file.ContentLength > 2 * 1024 * 1024)
            {
                context.Response.Write("{\"path\":\"\",\"error\":\"File too large\"}");
                return;
            }

            string folder = context.Server.MapPath("~/Files/Main/");
            if (!Directory.Exists(folder)) Directory.CreateDirectory(folder);

            string name = Guid.NewGuid().ToString("N") + ext;
            string diskPath = Path.Combine(folder, name);
            file.SaveAs(diskPath);

            string relative = "Files/Main/" + name; // what the client needs to store
            context.Response.Write("{\"path\":\"" + relative.Replace("\\","/") + "\",\"error\":\"\"}");
        }
        catch (Exception ex)
        {
            string msg = HttpUtility.JavaScriptStringEncode(ex.Message);
            context.Response.Write("{\"path\":\"\",\"error\":\"" + msg + "\"}");
        }
    }

    public bool IsReusable { get { return false; } }
}
