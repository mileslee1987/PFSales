﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_AddActivity.ascx.cs"
    Inherits="UserControls_UC_AddActivity" %>
<div style="float: left; width: 100%;">
    <b style="float: left; font-size: 16px; margin-bottom: 10px;">
        <asp:Label ID="lblAddActivity" runat="server" Text="<%$Resources:PFSalesResource,update %>"></asp:Label>
    </b>
</div>
<!--Content-Note: error Msg-->
<div id="dvsererror" runat="server" class="error" style="width: 91%; margin-top: 0px;"
    visible="false">
    <asp:Label ID="lblSerErrMsg" runat="server"></asp:Label>
</div>
<!--Content-Note: success Msg-->
<div id="dvaserSuccess" runat="server" class="success" style="width: 91%; margin-top: 0px;"
    visible="false">
    <asp:Label ID="lblSerSucMsg" runat="server"></asp:Label>
</div>
<dl class="ProspAct" style="margin-left: 15px;">
    <dt>
        <%--<label>
            *</label>--%>
        <asp:Label ID="lblltrclrActStatus" runat="server" Text="<%$Resources:PFSalesResource,ActivityStatus %>"></asp:Label>:
    </dt>
    <dd>
        <asp:DropDownList ID="ddlclrActStatus" TabIndex="101" CssClass="selectClass" runat="server"
            Width="300px">
            <asp:ListItem Value="0" Text="<%$Resources:PFSalesResource,ddlSelect %>"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvclrActStatus" runat="server" ControlToValidate="ddlclrActStatus"
            Display="None" InitialValue="0" ValidationGroup="Save" ErrorMessage="<%$ Resources:PFSalesResource,ActStatusVal %>"
            SetFocusOnError="true"></asp:RequiredFieldValidator>
        <ajax:ValidatorCalloutExtender ID="vceclrActStatus" runat="server" TargetControlID="rfvclrActStatus"
            PopupPosition="TopRight">
        </ajax:ValidatorCalloutExtender>
    </dd>
    <dt>
        <%--        <label>
            *</label>--%>
        <asp:Label ID="lblltrclrRemark" runat="server" Text="<%$Resources:PFSalesResource,Notes %>"></asp:Label>
    </dt>
    <dd style="height: auto;">
        <asp:TextBox ID="txtclrRemark" TabIndex="102" runat="server" Style="height: auto;"
            CssClass="inputClass" TextMode="MultiLine" Width="296px" Rows="4" MaxLength="500"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNotes" runat="server" ControlToValidate="txtclrRemark"
            Display="None" ValidationGroup="Save" ErrorMessage="<%$ Resources:PFSalesResource,NotesVal %>"
            SetFocusOnError="true" Enabled="false"></asp:RequiredFieldValidator>
        <ajax:ValidatorCalloutExtender ID="vceNotes" runat="server" TargetControlID="rfvNotes"
            PopupPosition="TopRight">
        </ajax:ValidatorCalloutExtender>
    </dd>
    <dt style="margin-top: 10px;">
        <%-- <label>
            *</label>--%><asp:Label ID="lblltrclrStatus" runat="server" Text="<%$Resources:PFSalesResource,Status %>"></asp:Label>:
    </dt>
    <dd style="margin-top: 10px;">
        <asp:DropDownList ID="ddlclrStatus" CssClass="selectClass" TabIndex="103" runat="server" Width="300px">
            <asp:ListItem Value="0" Text="<%$Resources:PFSalesResource,ddlSelect %>"></asp:ListItem>
        </asp:DropDownList>
        <%--  <asp:RequiredFieldValidator ID="rfvLeadStatus" runat="server" ControlToValidate="ddlclrStatus"
            Display="None" InitialValue="0" ValidationGroup="Save" ErrorMessage="<%$ Resources:PFSalesResource,StatusVal %>"
            SetFocusOnError="true" Enabled="false"></asp:RequiredFieldValidator>
        <ajax:ValidatorCalloutExtender ID="vceLeadStatus" runat="server" TargetControlID="rfvLeadStatus"
            PopupPosition="TopRight">
        </ajax:ValidatorCalloutExtender>--%>
    </dd>
</dl>
<div style="float: left; width: 100%;">
    <b style="float: left; font-size: 16px; margin-bottom: 10px;">
        <asp:Label ID="lblScheduleCall" runat="server" Text="<%$Resources:PFSalesResource,ScheduleCall %>"></asp:Label>
    </b>
</div>
<div class="dilContenerTwo" style="float: left; margin-bottom: 20px; margin-left: 15px;
    margin-right: 25px; margin-top: 15px;">
    <%--<div class="tablerBtn">--%>
    <asp:LinkButton ID="lnkbtnGeneralInfo" runat="server" Visible="false" CssClass="tablerBtnActive"
        OnClick="lnkbtnGeneralInfo_Click" Text="<%$Resources:PfSalesResource,General%>"
        ToolTip="<%$Resources:PfSalesResource,AddGeneral%>"></asp:LinkButton>
    <asp:LinkButton ID="lnkbtnDetailsInfo" runat="server" Visible="false" OnClick="lnkbtnDetailsInfo_Click"
        Text="<%$Resources:PfSalesResource,Details%>" ToolTip="<%$Resources:PfSalesResource,AddDetails%>">
    </asp:LinkButton>
    <%-- </div>--%>
    <%-- <div class="tablerView" style="padding-bottom: 7px; padding-left: 10px; padding-right: 18px;
        padding-top: 10px; width: 90.98%;">--%>
    <asp:Panel ID="pnlGeneral" runat="server">
        <dl class="ProspAct">
            <dt>
                <label>
                    *</label><asp:Label ID="lblltraddActProspect" runat="server" Text="<%$ Resources:PFSalesResource,prospect%>"></asp:Label>
                <asp:HiddenField ID="hdfProspectId" runat="server" />
            </dt>
            <dd>
                <asp:DropDownList ID="ddlProspect" TabIndex="4" runat="server" CssClass="selectClass"
                    Visible="false" AutoPostBack="true" OnSelectedIndexChanged="ddlProspect_SelectedIndexChanged">
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ddlSelect %>" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblAddActProspect" runat="server"></asp:Label>
                <%--<asp:RequiredFieldValidator ID="rfvActProspect" runat="server" ControlToValidate="ddlProspect"
                    Display="None" ErrorMessage="<%$ Resources:PFSalesResource,ContactSelVal %>"
                    InitialValue="0" SetFocusOnError="true" ValidationGroup="Save"></asp:RequiredFieldValidator>
                <ajax:ValidatorCalloutExtender ID="vceProspect" runat="server" PopupPosition="TopRight"
                    TargetControlID="rfvActProspect">
                </ajax:ValidatorCalloutExtender>--%>
            </dd>
            <dt>
                <%--<label>
                    *</label>--%>
                <asp:Label ID="lblAddActStrDate" runat="server" Text="<%$Resources:PFSalesResource,StartDate%>"></asp:Label>
            </dt>
            <dd>
                <asp:TextBox ID="txtActDate" TabIndex="104" runat="server" CssClass="inputClass" Width="90px"></asp:TextBox>
                <%-- AutoPostBack="true" OnTextChanged="txtActDate_textChanged"--%>
                <asp:LinkButton ID="lnkbtnCalSDate" TabIndex="105" runat="server" Style="float: left">
                    <asp:Image ID="imgCalSDate" runat="server" ImageUrl="~/Images/calendar-month.png" /></asp:LinkButton>
                <ajax:CalendarExtender ID="ceStartDate" runat="server" TargetControlID="txtActDate"
                    Format="dd/MM/yyyy" PopupPosition="TopLeft" PopupButtonID="lnkbtnCalSDate">
                </ajax:CalendarExtender>
                <%--<ajax:MaskedEditExtender ID="meeActDate" runat="server" Mask="<%$ Resources:PfSalesResource, masktype %>"
                    MaskType="Date" MessageValidatorTip="true" TargetControlID="txtActDate">
                </ajax:MaskedEditExtender>--%>
                <asp:CompareValidator ID="cvActDate" runat="server" ControlToValidate="txtActDate"
                    Display="None" ErrorMessage="<%$ Resources:PfSalesResource, ValidDate%>" Operator="DataTypeCheck"
                    SetFocusOnError="true" Type="Date" ValidationGroup="Save">
                </asp:CompareValidator>
                <ajax:ValidatorCalloutExtender ID="vceCompDOB" runat="server" PopupPosition="TopLeft"
                    TargetControlID="cvActDate">
                </ajax:ValidatorCalloutExtender>
                <%--<ajax:MaskedEditValidator ID="mskEValStrDate" runat="server" ControlExtender="meeActDate"
                    ControlToValidate="txtActDate" Display="None" EmptyValueMessage="<%$ Resources:PFSalesResource, ActDateVal %>"
                    ErrorMessage="<%$ Resources:PFSalesResource, ValidDate %>" IsValidEmpty="False"
                    SetFocusOnError="true" ValidationGroup="Save"></ajax:MaskedEditValidator>--%>
                <%-- <ajax:ValidatorCalloutExtender ID="vceActDate" runat="server" PopupPosition="TopLeft"
                    TargetControlID="mskEValStrDate">
                </ajax:ValidatorCalloutExtender>--%>
                <asp:Label ID="lblDobinfo" runat="server" Visible="false" Style="color: Red;" Text="<%$Resources:PFSalesResource,Setdateformat %>"></asp:Label>
            </dd>
            <dt style="height: 80px;" runat="server" visible="false">
                <%--<label>
                    *</label>--%>
                <asp:Label ID="lblAddActReg" runat="server" Text="<%$Resources:PFSalesResource,Regarding %>"></asp:Label>
                :</dt>
            <dd style="height: 80px;" runat="server" visible="false">
                <asp:TextBox ID="txtRegarding" runat="server" CssClass="inputClass" TextMode="MultiLine"
                    Rows="3" Style="height: auto"></asp:TextBox>
                <%-- <asp:RequiredFieldValidator ID="rfvNewReg" runat="server" ControlToValidate="txtRegarding"
                    Display="None" ErrorMessage="<%$ Resources:PFSalesResource,NewRegVal %>" InitialValue=""
                    SetFocusOnError="true" ValidationGroup="Save"></asp:RequiredFieldValidator>
                <ajax:ValidatorCalloutExtender ID="vceNewReg" runat="server" PopupPosition="TopRight"
                    TargetControlID="rfvNewReg">
                </ajax:ValidatorCalloutExtender>--%>
            </dd>
            <dt runat="server" visible="false">
                <%-- <label>
                    *</label>--%>
                <asp:Label ID="lblAddActPriorty" runat="server" Text="<%$Resources:PFSalesResource,Priority %>"></asp:Label>
                :</dt>
            <dd runat="server" visible="false">
                <asp:DropDownList ID="ddlPriority" runat="server" CssClass="selectClass">
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ddlSelect %>" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvActPriority" runat="server" ControlToValidate="ddlPriority"
                    Display="None" ErrorMessage="<%$ Resources:PFSalesResource,priorityVal %>" InitialValue="0"
                    SetFocusOnError="true" Enabled="false" ValidationGroup="Save"></asp:RequiredFieldValidator>
                <ajax:ValidatorCalloutExtender ID="vceActPriority" runat="server" PopupPosition="TopRight"
                    TargetControlID="rfvActPriority">
                </ajax:ValidatorCalloutExtender>
            </dd>
            <dt>
                <asp:Label ID="lblRingAlarm" runat="server" Text="<%$Resources:PFSalesResource,ShowAlert %>"></asp:Label>
            </dt>
            <dd>
                <asp:DropDownList ID="ddlAlarm" runat="server" AutoPostBack="true" CssClass="selectClass"
                    TabIndex="107">
                    <asp:ListItem Text="<%$Resources:PFSalesResource,NoAlert %>" Selected="True" Value="0"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ZeroMinutes %>" Value="1"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FiveMinutes %>" Value="5"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,TenMinutes %>" Value="10"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FifteenMinutes %>" Value="15"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ThirtyMinutes %>" Value="30"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,oneHour %>" Value="60"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,oneDay %>" Value="1440"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FifteenDay %>" Value="21600"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ThirtyDay %>" Value="43200"></asp:ListItem>
                </asp:DropDownList>
            </dd>
            <%-- <dt style="width: 85px;">
                                <asp:Label ID="lblActTime" runat="server" Text="<%$Resources:PFSalesResource,ActivityTime%>"></asp:Label></dt>
                            <dd style="width: 140px;">
                                <asp:TextBox ID="txtActTime" CssClass="inputClass" TabIndex="13" Width="130px" runat="server"></asp:TextBox>
                                <asp:Label Style="padding-left: 4px; color: Red" ID="lblActTimeInfo" runat="server"
                                    Text="<%$Resources:PFSalesResource,TimeFormat %>"></asp:Label>
                            </dd>--%>
            <dt style="height: 70px;" runat="server" visible="false">
                <asp:Label ID="lblRemark" runat="server" Text="<%$Resources:PFSalesResource,Remark %>"></asp:Label>
            </dt>
            <dd style="height: 70px;" runat="server" visible="false">
                <asp:TextBox ID="txtRemark" runat="server" TextMode="MultiLine" Style="height: auto;"> </asp:TextBox></dd>
        </dl>
        <dl class="ProspAct">
            <dt>
                <%--      <label>
                    *</label>--%>
                <asp:Label ID="lblAddActType" runat="server" Text="<%$Resources:PFSalesResource,ActivityType %>"
                    Visible="false"></asp:Label>
            </dt>
            <dd>
                <asp:DropDownList ID="ddlAddActType" runat="server" AutoPostBack="true" CssClass="selectClass"
                    OnSelectedIndexChanged="ddlAddActType_SelectedIndexChanged" Visible="false">
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ddlSelect %>" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvAddActType" runat="server" ControlToValidate="ddlAddActType"
                    Display="None" ErrorMessage="<%$ Resources:PFSalesResource,ActTypeVal %>" InitialValue="0"
                    SetFocusOnError="true" Enabled="false" ValidationGroup="Save"></asp:RequiredFieldValidator>
                <ajax:ValidatorCalloutExtender ID="vceActtype" runat="server" PopupPosition="TopRight"
                    TargetControlID="rfvAddActType">
                </ajax:ValidatorCalloutExtender>
                <asp:LinkButton ID="lnkbtnCallTommarrow" runat="server" Text="<%$Resources:PFSalesResource,CallTomarrow %>"
                    ToolTip="<%$Resources:PFSalesResource,SetReminderForNext %>" OnClick="lnkbtnCallTommarrow_Click"></asp:LinkButton>
            </dd>
            <dt>
                <%--  <label style="color: red;">
                    *</label>--%>
                <asp:Label ID="lblActTime" runat="server" Text="<%$Resources:PFSalesResource,StartTime%>"></asp:Label>
            </dt>
            <dd>
                <asp:TextBox ID="txtActTime" runat="server" CssClass="inputClass" Visible="false"
                    Width="90px"></asp:TextBox>
                <%-- AutoPostBack="true" OnTextChanged="txtActTime_TextChanged"--%>
                <asp:DropDownList ID="ddlActTime" runat="server" CssClass="selectClass" TabIndex="106" >
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ddlSelect %>" Value="0"></asp:ListItem>
                    <asp:ListItem Text="07:00" Value="07:00"></asp:ListItem>
                    <asp:ListItem Text="07:30" Value="07:30"></asp:ListItem>
                    <asp:ListItem Text="08:00" Value="08:00"></asp:ListItem>
                    <asp:ListItem Text="08:30" Value="08:30"></asp:ListItem>
                    <asp:ListItem Text="09:00" Value="09:00"></asp:ListItem>
                    <asp:ListItem Text="09:30" Value="09:30"></asp:ListItem>
                    <asp:ListItem Text="10:00" Value="10:00" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="10:30" Value="10:30"></asp:ListItem>
                    <asp:ListItem Text="11:00" Value="11:00"></asp:ListItem>
                    <asp:ListItem Text="11:30" Value="11:30"></asp:ListItem>
                    <asp:ListItem Text="12:00" Value="12:00"></asp:ListItem>
                    <asp:ListItem Text="12:30" Value="12:30"></asp:ListItem>
                    <asp:ListItem Text="13:00" Value="13:00"></asp:ListItem>
                    <asp:ListItem Text="13:30" Value="13:30"></asp:ListItem>
                    <asp:ListItem Text="14:00" Value="14:00"></asp:ListItem>
                    <asp:ListItem Text="14:30" Value="14:30"></asp:ListItem>
                    <asp:ListItem Text="15:00" Value="15:00"></asp:ListItem>
                    <asp:ListItem Text="15:30" Value="15:30"></asp:ListItem>
                    <asp:ListItem Text="16:00" Value="16:00"></asp:ListItem>
                    <asp:ListItem Text="16:30" Value="16:30"></asp:ListItem>
                    <asp:ListItem Text="17:00" Value="17:00"></asp:ListItem>
                    <asp:ListItem Text="17:30" Value="17:30"></asp:ListItem>
                    <asp:ListItem Text="18:00" Value="18:00"></asp:ListItem>
                    <asp:ListItem Text="18:30" Value="18:30"></asp:ListItem>
                    <asp:ListItem Text="19:00" Value="19:00"></asp:ListItem>
                    <asp:ListItem Text="19:30" Value="19:30"></asp:ListItem>
                    <asp:ListItem Text="20:00" Value="20:00"></asp:ListItem>
                </asp:DropDownList>
                <asp:CustomValidator ID="cvSdateTime" runat="server" ControlToValidate="ddlActTime"
                    Display="None" ErrorMessage="<%$ Resources:PfSalesResource, MinSdateVal%>" SetFocusOnError="true"
                    ValidationGroup="Custom" OnServerValidate="cvSdateTime_Validate">
                </asp:CustomValidator>
                <ajax:ValidatorCalloutExtender ID="vcSdateTime" runat="server" PopupPosition="TopLeft"
                    TargetControlID="cvSdateTime">
                </ajax:ValidatorCalloutExtender>
                <asp:RequiredFieldValidator ID="rvActTime" runat="server" ControlToValidate="ddlActTime"
                    Display="None" ErrorMessage="<%$ Resources:PFSalesResource,SelectSTimeVal %>"
                    InitialValue="0" SetFocusOnError="true" Enabled="false" ValidationGroup="Save"></asp:RequiredFieldValidator>
                <ajax:ValidatorCalloutExtender ID="vceSTime" runat="server" PopupPosition="TopRight"
                    TargetControlID="rvActTime">
                </ajax:ValidatorCalloutExtender>
                <asp:Label ID="lblDuration" runat="server" Text="<%$Resources:PFSalesResource,Duration%>"
                    Visible="false"></asp:Label>
                <asp:DropDownList ID="ddlDuration" runat="server" AutoPostBack="true" CssClass="selectClass"
                    OnSelectedIndexChanged="ddlDuration_SelectedIndexChanged" Style="margin-left: 6px;"
                    Visible="false">
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ddlSelect %>" Value="0"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ZeroMinutes %>" Value="1" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FiveMinutes %>" Value="5"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,TenMinutes %>" Value="10"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FifteenMinutes %>" Value="15"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ThirtyMinutes %>" Value="30"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FortyFiveMinutes %>" Value="45"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,oneHour %>" Value="60"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,oneDay %>" Value="1440"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,FifteenDay %>" Value="21600"></asp:ListItem>
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ThirtyDay %>" Value="43200"></asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblActTimeInfo" runat="server" Visible="false" Style="color: Red"
                    Text="<%$Resources:PFSalesResource,TimeFormat %>"></asp:Label>
                <ajax:MaskedEditExtender ID="mseActTime" runat="server" Mask="<%$ Resources:PfSalesResource, maskTime %>"
                    MaskType="Time" MessageValidatorTip="true" TargetControlID="txtActTime">
                </ajax:MaskedEditExtender>
                <ajax:MaskedEditValidator ID="mevActTime" runat="server" ControlExtender="mseActTime"
                    ControlToValidate="txtActTime" Display="None" EmptyValueMessage="<%$ Resources:PFSalesResource, ActTimeVal %>"
                    ErrorMessage="<%$ Resources:PFSalesResource, ValidTime %>" IsValidEmpty="False"
                    SetFocusOnError="true" ValidationGroup="Save"></ajax:MaskedEditValidator>
                <ajax:ValidatorCalloutExtender ID="vceActTime" runat="server" PopupPosition="TopLeft"
                    TargetControlID="mevActTime">
                </ajax:ValidatorCalloutExtender>
            </dd>
        </dl>
        <dl class="ProspAct">
            <%--<dt style="width: 0px; height: 0px;"></dt>
            <dd style="width: 450px; height: 250px;"></dd>--%>
            <dt id="Dt1" runat="server" style="width: 100px; padding-bottom: 5px; padding-left: 15px;
                padding-right: 5px;" visible="false">
                <asp:Label ID="lblActStatus" runat="server" Text="<%$Resources:PFSalesResource,ActivityStatus %>"></asp:Label>
            </dt>
            <dd id="Dd1" runat="server" visible="false">
                <asp:DropDownList ID="ddlActStatus" runat="server" CssClass="selectClass">
                    <asp:ListItem Text="<%$Resources:PFSalesResource,ddlSelect %>" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </dd>
            <%-- <dt style="width: 70px;">--%>
            <asp:Label ID="lblLocation" Visible="false" runat="server" Text="<%$ Resources:PFSalesResource,Location%>"></asp:Label>
            <%--</dt>
            <dd style="width: 150px;"></dd>--%>
            <asp:TextBox ID="txtLocation" Visible="false" runat="server" CssClass="inputClass"
                TabIndex="9" Width="130px"></asp:TextBox>
            <dt id="dtAlertType" runat="server" style="width: 70px; height: 25px;" visible="false">
                <asp:Label ID="lblAlertType" runat="server" Text="<%$Resources:PFSalesResource,AlertType %>"></asp:Label>
            </dt>
            <dd id="ddAlertType" runat="server" style="width: 350px; height: 25px;" visible="false">
                <asp:CheckBox ID="chkSms" runat="server" CssClass="allchklist" TabIndex="11" Text="SMS"
                    Visible="false" />
                <asp:CheckBox ID="chkEmail" runat="server" CssClass="allchklist" TabIndex="12" Text="Email"
                    Checked="true" />
                <asp:CheckBox ID="chkDashBoard" runat="server" CssClass="allchklist" TabIndex="13"
                    Text="Dashboard" Checked="true" />
            </dd>
        </dl>
    </asp:Panel>
    <asp:Panel ID="pnlDetails" runat="server" Visible="false">
    </asp:Panel>
    <div class="headText" style="padding-top: 0px;">
    </div>
    <div class="button">
        <asp:LinkButton ID="lnkbtnSaveAct" runat="server" OnClientClick="return TestMinStartDate();"
            OnClick="lnkbtnSaveAct_Click" TabIndex="11" Text="<%$Resources:PFSalesResource,Save %>"
            ToolTip="<%$Resources:PFSalesResource,SaveAct %>"></asp:LinkButton><%--ValidationGroup="Save"--%>
        <asp:LinkButton ID="lnkbtnUpdate" runat="server" OnClientClick="return TestMinStartDate();"
            OnClick="lnkbtnUpdate_Click" TabIndex="12" Text="<%$Resources:PFSalesResource,update %>"
            ToolTip="<%$Resources:PFSalesResource,updateactivity %>" Visible="false"></asp:LinkButton><%--ValidationGroup="Save" --%>
        <asp:LinkButton ID="lnkbtnPhPopUpCancel" runat="server" CausesValidation="false"
            OnClick="lnkbtnPhPopUpCancel_Click" Visible="false" TabIndex="13" Text="<%$Resources:PFSalesResource,Clear %>"
            ToolTip="<%$Resources:PFSalesResource,Clear %>"></asp:LinkButton>
    </div>
    <%-- </div>--%>
</div>
<asp:HiddenField ID="hdfActivityId" runat="server" />
<asp:HiddenField ID="hdfOldActStartTime" runat="server" />
<asp:HiddenField ID="hdfActivityDocId" runat="server" />
<asp:HiddenField ID="hdfActivityDoc" runat="server" Value="" />
<asp:HiddenField ID="hdfIsAlarmNeeded" runat="server" Value="0" />
<asp:HiddenField ID="hdfActSMSAlertId" runat="server" Value="0" />
<asp:HiddenField ID="hdfActMailAlertId" runat="server" Value="0" />
<asp:HiddenField ID="hdfActDashAlertId" runat="server" Value="0" />
<asp:HiddenField ID="hdfActResId" runat="server" Value="0" />
<asp:HiddenField ID="hdfContactNotesId" runat="server" />
<asp:HiddenField ID="hdfMinSDate" runat="server" />
<asp:HiddenField ID="hdfisUpdateNotes" runat="server" Value="0" />
