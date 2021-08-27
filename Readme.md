<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128565460/13.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E20048)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to use ASPxClientEdit methods to clear editors within a specified container
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e20048/)**
<!-- run online end -->


<p>This example demonstrates how to use ASPxClientEdit methods to clear editors located on the page or inside a specific container. </p><p>Once the “Clear Editors” button is clicked, all editors located on the page and inside the ASPxPopupControl are cleared. The ASPxClientEdit.ClearEditorsInContainer method is used to create this functionality. The value “null” is passed as the method’s parameter to clear all visible editors on the page. </p><p>In addition, once the popup control is closed, only editors within the Popup control are cleared. To achieve this, ASPxClientEdit.ClearEditorsInContainerById method is used. Controls inside the Popup are wrapped within a &lt;div&gt;. The “id” of the &lt;div&gt is passed to the method as its parameter to clear all visible editors inside the Popup. </p><p>Note – Since GetMainElement() function always returns Null for ASPxPopupControl, it cannot be passed to the ASPxClientEdit.ClearEditorsInContainer method to clear the editors inside the Popup.  </p>

<br/>


