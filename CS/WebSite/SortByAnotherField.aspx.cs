using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using DevExpress.Web;
using DevExpress.Data;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        gridCustomers.GroupSummarySortInfo.Clear();

        ASPxGroupSummarySortInfo sortInfo = new ASPxGroupSummarySortInfo();
        sortInfo.SortOrder = ColumnSortOrder.Ascending;
        sortInfo.SummaryItem = gridCustomers.GroupSummary["Country", SummaryItemType.Min];
        sortInfo.GroupColumn = "City";

        gridCustomers.GroupSummarySortInfo.AddRange(sortInfo);

    }
}
