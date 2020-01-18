﻿using System.Web.UI.WebControls.WebParts;

/// <summary>
/// Summary description for MasterPageOnlySqlPersonalizationProvider
/// </summary>
public class MasterPageOnlySqlPersonalizationProvider : SqlPersonalizationProvider
{
    protected override void LoadPersonalizationBlobs(
        WebPartManager webPartManager,
        string path,
        string userName,
        ref byte[] sharedDataBlob,
        ref byte[] userDataBlob)
    {
        base.LoadPersonalizationBlobs(webPartManager, "master", userName, ref sharedDataBlob, ref userDataBlob);
    }
    protected override void ResetPersonalizationBlob(WebPartManager webPartManager, string path, string userName)
    {
        base.ResetPersonalizationBlob(webPartManager, "master", userName);
    }

    protected override void SavePersonalizationBlob(WebPartManager webPartManager, string path, string userName, byte[] dataBlob)
    {
        base.SavePersonalizationBlob(webPartManager, "master", userName, dataBlob);
    }

}