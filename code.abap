*----------------------------------------------------------------------*
*       CLASS ZCL_XOT_TRXR_ZCO2O07 DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
class zcl_xot_trxr_zco2o07 definition
  public
  inheriting from zcl_xot_trxr
  final
  create public .

  public section.

    types:
      begin of ty_wa_sf,
*      InfoObject: 0CO_AREA Controlling area.
              co_area           type /bi0/oico_area,
*      InfoObject: 0CO_DOC_NO CO Document Number.
              co_doc_no           type /bi0/oico_doc_no,
*      InfoObject: 0CO_ITEM_NO Line Item of CO Document.
              co_item_no           type /bi0/oico_item_no,
*      InfoObject: 0CURTYPE Currency Type.
              curtype           type /bi0/oicurtype,
*      InfoObject: 0METYPE Key Figure Type.
              metype           type /bi0/oimetype,
*      InfoObject: 0VTYPE Value Type for Reporting.
              vtype           type /bi0/oivtype,
*      InfoObject: 0FISCVARNT Fiscal year variant.
              fiscvarnt           type /bi0/oifiscvarnt,
*      InfoObject: 0WBS_ELEMT Work Breakdown Structure Element (WBS Element).
              wbs_elemt           type /bi0/oiwbs_elemt,
*      InfoObject: 0FISCPER Fiscal year / period.
              fiscper           type /bi0/oifiscper,
*      InfoObject: 0AMOUNT Amount.
              amount           type /bi0/oiamount,
*      InfoObject: 0AMOUNTFX Fixed amount.
              amountfx           type /bi0/oiamountfx,
*      InfoObject: 0AMOUNTVR Variable amount.
              amountvr           type /bi0/oiamountvr,
*      InfoObject: 0QUANTITY Quantity.
              quantity           type /bi0/oiquantity,
*      InfoObject: 0QUANTITYFX Fixed quantity.
              quantityfx           type /bi0/oiquantityfx,
*      InfoObject: 0QUANTITYVR Variable quantity.
              quantityvr           type /bi0/oiquantityvr,
*      InfoObject: 0CURRENCY Currency key.
              currency           type /bi0/oicurrency,
*      InfoObject: 0UNIT Unit of measure.
              unit           type /bi0/oiunit,
*      InfoObject: 0AUXACCTYPE Auxiliary Account Assignment Type.
              auxacctype           type /bi0/oiauxacctype,
*      InfoObject: 0AUXACCVAL Auxiliary Account Assignment Object.
              auxaccval           type /bi0/oiauxaccval,
*      InfoObject: 0COMP_CODE Company code.
              comp_code           type /bi0/oicomp_code,
*      InfoObject: 0BUS_AREA Business area.
              bus_area           type /bi0/oibus_area,
*      InfoObject: 0FUNC_AREA Functional area.
              func_area           type /bi0/oifunc_area,
*      InfoObject: 0PCOMP_CODE Company code of partner.
              pcomp_code           type /bi0/oipcomp_code,
*      InfoObject: 0PFUNC_AREA Partner Functional Area.
              pfunc_area           type /bi0/oipfunc_area,
*      InfoObject: 0CHRT_ACCTS Chart of accounts.
              chrt_accts           type /bi0/oichrt_accts,
*      InfoObject: 0GL_ACCOUNT G/L Account.
              gl_account           type /bi0/oigl_account,
*      InfoObject: 0CREDITOR Account number of supplier/vendor.
              creditor           type /bi0/oicreditor,
*      InfoObject: 0DEBITOR Customer Number.
              debitor           type /bi0/oidebitor,
*      InfoObject: 0PLANT Plant.
              plant           type /bi0/oiplant,
*      InfoObject: 0MATERIAL Material.
              material           type /bi0/oimaterial,
*      InfoObject: 0EMPLOYEE Employee.
              employee           type /bi0/oiemployee,
*      InfoObject: 0NOTIFICATN Message Number.
              notificatn           type /bi0/oinotificatn,
*      InfoObject: 0CO_ITEM_TX Text of CO Document Line Item.
              co_item_tx           type /bi0/oico_item_tx,
*      InfoObject: 0DOC_DATE Document Date.
              doc_date           type /bi0/oidoc_date,
*      InfoObject: 0PSTNG_DATE Posting date in the document.
              pstng_date           type /bi0/oipstng_date,
*      InfoObject: 0VTDETAIL Detailing the value type.
              vtdetail           type /bi0/oivtdetail,
*      InfoObject: 0VTSTAT Statistics indicator for value type.
              vtstat           type /bi0/oivtstat,
*      InfoObject: 0VERSION Version.
              version           type /bi0/oiversion,
*      InfoObject: 0VALUATION Valuation view.
              valuation           type /bi0/oivaluation,
*      InfoObject: 0COSTELMNT Cost Element.
              costelmnt           type /bi0/oicostelmnt,
*      InfoObject: 0DB_CR_IND Sender/Receiver Indicator.
              db_cr_ind           type /bi0/oidb_cr_ind,
*      InfoObject: 0PIOBJSV Partner Object Type.
              piobjsv           type /bi0/oipiobjsv,
*      InfoObject: 0PIOVALUE Partner object.
              piovalue           type /bi0/oipiovalue,
*      InfoObject: 0RECORDMODE BW Delta Process: Update Mode.
              recordmode           type rodmupdmod,
*      Field: RECORD.
              record           type rsarecord,
            end   of ty_wa_sf .
    types:
      ty_t_sp type table of ty_wa_sf .
    types:
      begin of ty_wa_rf,
*      Field: SID.
        sid           type rssid,
*      Field: DATAPAKID.
        datapakid           type rsdatapid,
*      Field: RECORD.
        record           type rsarecord,
*      InfoObject: 0CO_AREA Controlling area.
        co_area           type /bi0/oico_area,
*      InfoObject: 0CO_DOC_NO CO Document Number.
        co_doc_no           type /bi0/oico_doc_no,
*      InfoObject: 0CO_ITEM_NO Line Item of CO Document.
        co_item_no           type /bi0/oico_item_no,
*      InfoObject: 0CURTYPE Currency Type.
        curtype           type /bi0/oicurtype,
*      InfoObject: 0METYPE Key Figure Type.
        metype           type /bi0/oimetype,
*      InfoObject: 0VTYPE Value Type for Reporting.
        vtype           type /bi0/oivtype,
*      InfoObject: 0FISCVARNT Fiscal year variant.
        fiscvarnt           type /bi0/oifiscvarnt,
*      InfoObject: 0WBS_ELEMT Work Breakdown Structure Element (WBS Elem*ent).
        wbs_elemt           type /bi0/oiwbs_elemt,
*      InfoObject: 0FISCPER Fiscal year / period.
        fiscper           type /bi0/oifiscper,
*      InfoObject: 0AMOUNT Amount.
        amount           type /bi0/oiamount,
*      InfoObject: 0AMOUNTFX Fixed amount.
        amountfx           type /bi0/oiamountfx,
*      InfoObject: 0AMOUNTVR Variable amount.
        amountvr           type /bi0/oiamountvr,
*      InfoObject: 0QUANTITY Quantity.
        quantity           type /bi0/oiquantity,
*      InfoObject: 0QUANTITYFX Fixed quantity.
        quantityfx           type /bi0/oiquantityfx,
*      InfoObject: 0QUANTITYVR Variable quantity.
        quantityvr           type /bi0/oiquantityvr,
*      InfoObject: 0CURRENCY Currency key.
        currency           type /bi0/oicurrency,
*      InfoObject: 0UNIT Unit of measure.
        unit           type /bi0/oiunit,
*      InfoObject: 0PART_CCTR Partner Cost Center.
        part_cctr           type /bi0/oipart_cctr,
*      InfoObject: 0PART_ACTTY Activity Type of Partner Cost Center.
        part_actty           type /bi0/oipart_actty,
*      InfoObject: 0PART_COORD Partner Order.
        part_coord           type /bi0/oipart_coord,
*      InfoObject: 0PART_WBSEL Partner WBS Element.
        part_wbsel           type /bi0/oipart_wbsel,
*      InfoObject: 0PART_ABCPR Partner Business Process.
        part_abcpr           type /bi0/oipart_abcpr,
*      InfoObject: 0AUXACCTYPE Auxiliary Account Assignment Type.
        auxacctype           type /bi0/oiauxacctype,
*      InfoObject: 0AUXACCVAL Auxiliary Account Assignment Object.
        auxaccval           type /bi0/oiauxaccval,
*      InfoObject: 0COMP_CODE Company code.
        comp_code           type /bi0/oicomp_code,
*      InfoObject: 0BUS_AREA Business area.
        bus_area           type /bi0/oibus_area,
*      InfoObject: 0FUNC_AREA Functional area.
        func_area           type /bi0/oifunc_area,
*      InfoObject: 0PCOMP_CODE Company code of partner.
        pcomp_code           type /bi0/oipcomp_code,
*      InfoObject: 0PFUNC_AREA Partner Functional Area.
        pfunc_area           type /bi0/oipfunc_area,
*      InfoObject: 0CHRT_ACCTS Chart of accounts.
        chrt_accts           type /bi0/oichrt_accts,
*      InfoObject: 0GL_ACCOUNT G/L Account.
        gl_account           type /bi0/oigl_account,
*      InfoObject: 0CREDITOR Account number of supplier/vendor.
        creditor           type /bi0/oicreditor,
*      InfoObject: 0DEBITOR Customer Number.
        debitor           type /bi0/oidebitor,
*      InfoObject: 0PLANT Plant.
        plant           type /bi0/oiplant,
*      InfoObject: 0MATERIAL Material.
        material           type /bi0/oimaterial,
*      InfoObject: 0EMPLOYEE Employee.
        employee           type /bi0/oiemployee,
*      InfoObject: 0NOTIFICATN Message Number.
        notificatn           type /bi0/oinotificatn,
*      InfoObject: 0CO_ITEM_TX Text of CO Document Line Item.
        co_item_tx           type /bi0/oico_item_tx,
*      InfoObject: 0DOC_DATE Document Date.
        doc_date           type /bi0/oidoc_date,
*      InfoObject: 0PSTNG_DATE Posting date in the document.
        pstng_date           type /bi0/oipstng_date,
*      InfoObject: 0VTDETAIL Detailing the value type.
        vtdetail           type /bi0/oivtdetail,
*      InfoObject: 0VTSTAT Statistics indicator for value type.
        vtstat           type /bi0/oivtstat,
*      InfoObject: 0VERSION Version.
        version           type /bi0/oiversion,
*      InfoObject: 0VALUATION Valuation view.
        valuation           type /bi0/oivaluation,
*      InfoObject: 0COSTELMNT Cost Element.
        costelmnt           type /bi0/oicostelmnt,
*      InfoObject: 0DB_CR_IND Sender/Receiver Indicator.
        db_cr_ind           type /bi0/oidb_cr_ind,
*      InfoObject: 0PIOBJSV Partner Object Type.
        piobjsv           type /bi0/oipiobjsv,
*      InfoObject: 0PIOVALUE Partner object.
        piovalue           type /bi0/oipiovalue,
*      InfoObject: 0RECORDMODE BW Delta Process: Update Mode.
        recordmode           type rodmupdmod,
*      InfoObject: ZCIN_GUID Initiaitive Guid.
        /bic/zcin_guid           type /bic/oizcin_guid,
*      InfoObject: ZCPRPRJTY WBS partner project type.
        /bic/zcprprjty           type /bic/oizcprprjty,
*      InfoObject: ZCPSPRJTY WBS Project Type.
        /bic/zcpsprjty           type /bic/oizcpsprjty,
*      InfoObject: ZFIACTTYP Activity Type.
        /bic/zfiacttyp           type /bic/oizfiacttyp,
*      InfoObject: ZFIPIOVAL Partner Object Value.
        /bic/zfipioval           type /bic/oizfipioval,
*      InfoObject: ZFIPITYVA Partner Object Type Value.
        /bic/zfipityva           type /bic/oizfipityva,
*      InfoObject: ZPPOBJ Plan Partner Object.
        /bic/zppobj           type /bic/oizppobj,
*      InfoObject: ZPPOBJT Plan Partner Object Type.
        /bic/zppobjt           type /bic/oizppobjt,
*      InfoObject: ZPPOBJA Plan Inflow/Outflow Indicator.
        /bic/zppobja           type /bic/oizppobja,
*      InfoObject: ZPPCTYPE Plan Direct/Indirect Cost.
        /bic/zppctype           type /bic/oizppctype,
*      InfoObject: ZPPCCTR Plan Partner Cost Centre.
        /bic/zppcctr           type /bic/oizppcctr,
*      InfoObject: ZPPINIT Plan Partner Initiative.
        /bic/zppinit           type /bic/oizppinit,
*      InfoObject: 0NETWORK Network.
        network           type /bi0/oinetwork,
*      InfoObject: 0ACTIVITY Network Activity.
        activity           type /bi0/oiactivity,
*      InfoObject: 0PM_ORDER Maintenance Order.
        pm_order           type /bi0/oipm_order,
*      InfoObject: 0INM_INID Ref ID.
        inm_inid           type /bi0/oiinm_inid,
*      InfoObject: 0INM_INGU Initiative Detail.
        inm_ingu           type /bi0/oiinm_ingu,
*      InfoObject: 0RPM_IHID Item ID.
        rpm_ihid           type /bi0/oirpm_ihid,
*      InfoObject: 0RPM_IHGU Item Header.
        rpm_ihgu           type /bi0/oirpm_ihgu,
*      InfoObject: 0COSTCENTER Cost Center.
        costcenter           type /bi0/oicostcenter,
*      InfoObject: 0COORDER Order Number.
        coorder           type /bi0/oicoorder,
      end   of ty_wa_rf.
    types:
      ty_t_rp type table of ty_wa_rf .
    types:
      begin of ty_wa_xr,
                  sf type ty_wa_sf,
                  rf type ty_wa_rf,
                end of ty_wa_xr .

    types:
      begin of ty_wa_mdp_0coorder,
                      coorder                  type /bi0/oicoorder,
                      resp_cctr                type /bi0/oiresp_cctr,
                    end of ty_wa_mdp_0coorder .
    types:
      ty_th_mdp_0coorder                 type hashed table of ty_wa_mdp_0coorder with unique key coorder .

    types:
      begin of ty_wa_mdp_0wbs_elemt,
                        wbs_elemt                type /bi0/oiwbs_elemt,
                        ps_usr1                   type /bi0/oips_usr1,
                        inm_inid                  type /bi0/oiinm_inid,
                        inm_ingu                  type /bi0/oiinm_ingu,
                        rpm_ihid                  type /bi0/oirpm_ihid,
                        rpm_ihgu                  type /bi0/oirpm_ihgu,
                        /bic/zcin_guid            type /bic/oizcin_guid,
                      end of ty_wa_mdp_0wbs_elemt .
    types:
      ty_th_mdp_0wbs_elemt                 type hashed table of ty_wa_mdp_0wbs_elemt with unique key wbs_elemt .
    types:
      begin of ty_wa_dv_0activity,
                      network                  type /bi0/oinetwork,
                      activity                 type /bi0/oiactivity,
                    end of ty_wa_dv_0activity .
    types:
      begin of ty_wa_mdp_0activity,
                      network                  type /bi0/oinetwork,
                      activity                 type /bi0/oiactivity,
                      wbs_elemt                type /bi0/oiwbs_elemt,
                    end of ty_wa_mdp_0activity .
    types:
      ty_th_mdp_0activity                 type hashed table of ty_wa_mdp_0activity with unique key network activity .
    types:
      begin of ty_wa_td_zcoom_o2,
                co_doc_no	                 type /bi0/oico_doc_no,
                doc_item                   type /bi0/oidoc_item,
                coorder                    type /bi0/oicoorder,
                piobjsv	                   type /bi0/oipiobjsv,
                piovalue                   type /bi0/oipiovalue,
                amount                     type /bi0/oiamount,
                    end of ty_wa_td_zcoom_o2 .
    types:
      ty_t_td_zcoom_o2                  type table of ty_wa_td_zcoom_o2 .
    types:
      ty_th_td_zcoom_o2                 type hashed table of ty_wa_td_zcoom_o2 with unique key co_doc_no coorder amount .

    methods zif_xot_trxr~data
      redefinition .
protected section.
private section.

  aliases O_LCL
    for ZIF_XOT_TRXR~O_LCL .
  aliases O_LOG
    for ZIF_XOT_TRXR~O_LOG .
  aliases O_REQUEST
    for ZIF_XOT_TRXR~O_REQUEST .
  aliases V_CHECK_MASTER_DATA_EXIST
    for ZIF_XOT_TRXR~V_CHECK_MASTER_DATA_EXIST .
  aliases V_DATAPACKID
    for ZIF_XOT_TRXR~V_DATAPACKID .
  aliases V_REQUEST
    for ZIF_XOT_TRXR~V_REQUEST .
  aliases WA_CURR_RULE
    for ZIF_XOT_TRXR~WA_CURR_RULE .

  data T_SP type TY_T_SP .
  data T_RP type TY_T_RP .
  data TH_MDP_0COORDER type TY_TH_MDP_0COORDER .
  data TH_MDP_0WBS_ELEMT type TY_TH_MDP_0WBS_ELEMT .
  data TH_MDP_0ACTIVITY type TY_TH_MDP_0ACTIVITY .
  data TH_TD_ZCOOM_O2 type TY_TH_TD_ZCOOM_O2 .
  data F_USE_ERROR_STACK type RS_BOOL .
  data T_SP_ERROR_STACK type TY_T_SP .
  type-pools RSTR .
  data T_ERROR_MSG type RSTR_TY_T_MONITORS .

  methods SETUP
    importing
      !IV_REQUEST type RSREQUEST
      !IV_DATAPACKID type RSDATAPID
      !IO_LOG type ref to CL_RSBM_LOG_CURSOR_STEP
      !IO_LCL type ref to OBJECT
      !IT_SOURCE_PACKAGE type STANDARD TABLE .
  methods TRANSFORM .
  methods CLEANUP
    exporting
      !ET_RESULT_PACKAGE type ANY TABLE .
  methods MESSAGE .
  methods DB_READ .
  methods DB_MDP_0COORDER .
  methods DB_MDP_0WBS_ELEMT .
  methods DB_MDP_0ACTIVITY .
  methods DB_TD_ZCOOM_O2 .
  methods SET_0NETWORK
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0ACTIVITY
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0PM_ORDER
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0COSTCENTER
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0COORDER
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0INM_INID
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0INM_INGU
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0RPM_IHID
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_0RPM_IHGU
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_ZCIN_GUID
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_PARTNERS
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_INFLOW
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_INFLOW_0ATY
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_INFLOW_0CCT
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_INFLOW_0COR
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_OUTFLOW
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_OUTFLOW_0CCT
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_OUTFLOW_0COR
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_OUTFLOW_0NWA
    changing
      !CWA_XR type TY_WA_XR .
  methods SET_OUTFLOW_0POS
    changing
      !CWA_XR type TY_WA_XR .
ENDCLASS.



CLASS ZCL_XOT_TRXR_ZCO2O07 IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->CLEANUP
* +-------------------------------------------------------------------------------------------------+
* | [<---] ET_RESULT_PACKAGE              TYPE        ANY TABLE
* +--------------------------------------------------------------------------------------</SIGNATURE>
method cleanup.

  data:
    lwa_rf                         type ty_wa_rf,
    lt_rp                          type ty_t_rp.

  "Aggregate data where necesary.
  loop at t_rp into lwa_rf.
    collect lwa_rf into lt_rp.
  endloop.

  "Export result package.
  et_result_package = lt_rp.

  "Clear internal result package.
  clear lt_rp.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->DB_MDP_0ACTIVITY
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method db_mdp_0activity.

  if th_mdp_0activity is initial.

    "Retrieve all active master data.
    select
        network
        activity
        wbs_elemt
      into corresponding fields of table th_mdp_0activity
      from /bi0/pactivity
      where
        objvers = 'A'.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->DB_MDP_0COORDER
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method db_mdp_0coorder.

  if th_mdp_0coorder is initial.

    "Retrieve all active master data.
    select
        coorder
        resp_cctr
      into table th_mdp_0coorder
      from /bi0/pcoorder
      where
        objvers = 'A'.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->DB_MDP_0WBS_ELEMT
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method db_mdp_0wbs_elemt.

  if th_mdp_0wbs_elemt is initial.

    "Retrieve all active master data.
    select
        wbs_elemt
        ps_usr1
        inm_inid
        inm_ingu
        rpm_ihid
        rpm_ihgu
        /bic/zcin_guid
      into table th_mdp_0wbs_elemt
      from /bi0/pwbs_elemt
      where
        objvers = 'A'.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->DB_READ
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method db_read.

  "Retrieve CO Order.
  db_mdp_0coorder( ).

  "Retrieve WBS attributes.
  db_mdp_0wbs_elemt( ).

  "Retrieve Network Activity attributes.
  db_mdp_0activity( ).

  "Retrieve Order Posting transaction data.
  db_td_zcoom_o2( ).

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->DB_TD_ZCOOM_O2
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method db_td_zcoom_o2.

  data:
    lt_td_zcoom_o2                 type ty_t_td_zcoom_o2.

  if lt_td_zcoom_o2 is initial.

    "Retrieve transaction data for Order postings.
    select
        co_doc_no
        doc_item
        coorder
        piobjsv
        piovalue
        amount
      into corresponding fields of table lt_td_zcoom_o2
      from /bic/azcoom_o200
      where
        fiscvarnt = 'BC' and
        co_area   = '4000' and
        curtype   = '10' and   "Company code currency.
        metype    = '1000' and "Costs/Quantities.
        vtype     = '010'. "Actuals.

    "If either the Partner Object Type or Partner Object are initial then the record is of no use.
    delete lt_td_zcoom_o2 where piobjsv is initial or piovalue is initial.

    sort lt_td_zcoom_o2 by co_doc_no coorder amount.
    delete adjacent duplicates from lt_td_zcoom_o2 comparing co_doc_no coorder amount.

    th_td_zcoom_o2 = lt_td_zcoom_o2.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->MESSAGE
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method message.


*#  This method manages messaging and error handling. The error
*   messages are collected during processing each record of the
*   source package and processed as a final step.
*#  The erronious records are transfered to variable T_SP_ERROR_STACK
*   and the error message is transferred to variable T_ERROR_MSG.
*#  The erronious records are posted to the Error Stack for
*   re-processing but the record is not removed from the output.
*   This is intentional to ensure that the totals in the source
*   package is the same as the totals in the result package.

  data:
    lwa_error_stack                type ty_wa_sf,
    lwa_sf                         type ty_wa_sf,
    lwa_error_msg                  type rstmonitor,
    lts_error_msg                  type sorted table of rstmonitor with non-unique key recno,
    lts_rp                         type sorted table of ty_wa_rf  with non-unique key record,
    lwa_msg                        type rstmonitor,
    lt_msg                         type rstr_ty_t_monitors.

  "Check validity of derived field values.
  call method zcl_xot_bwu_rskc=>check_nphex
    exporting
      i_datst = 'ZCO2O06'
    changing
      ct_data = t_rp.

  "If there are no errors return the result package.
  if t_sp_error_stack is initial.
    return.
  endif.

  "Set static values.
  lwa_msg-msgid   = 'ZX_BWU_COPP'.
  lwa_msg-msgty   = 'E'.
  lwa_msg-skipped = 'X'.

  "Transfer variables to sorted tables.
  lts_error_msg = t_error_msg.
  lts_rp = t_rp.

  "Loop through records flagged as erronious.
  loop at t_sp_error_stack into lwa_error_stack.

    "Loop through each message for each erronious record.
    loop at lts_error_msg into lwa_error_msg where recno = lwa_error_stack-record.

      "Clear message table for each message.
      clear lt_msg.

      "Set the record number.
      lwa_msg-recno = lwa_error_stack-record.

      "Set the message number.
      lwa_msg-msgno = lwa_error_msg-msgno.

      case lwa_msg-msgno.
        when '001'.

          "Unable to derive Resposible CC from CO Order MD for Order '&1'.
          lwa_msg-msgv1 = lwa_error_stack-piovalue.
          append lwa_msg to lt_msg.

        when '002'.

          "Unable to derive settlement object from Document '&1' and Order '&2'.
          lwa_msg-msgv1 = lwa_error_stack-co_doc_no.
          lwa_msg-msgv2 = lwa_error_stack-piovalue.
          append lwa_msg to lt_msg.

        when '003'.

          "Unable to derive PPM Level 5 from WBS Element MD '&1'.
          lwa_msg-msgv1 = lwa_error_stack-piovalue.
          append lwa_msg to lt_msg.

        when '004'.

          "Unable to retrieve Network Activity MD for '&1/&2'.
          lwa_msg-msgv1 = lwa_error_stack-piovalue(12).
          lwa_msg-msgv2 = lwa_error_stack-piovalue+12(4).
          append lwa_msg to lt_msg.

        when '005'.

          "Unable to retrieve WBS Master MD for '&1'.
          lwa_msg-msgv1 = lwa_error_msg-msgv1.
          append lwa_msg to lt_msg.

        when '006'.

          "Unable to retrieve WBS Master MD for '&1'.
          lwa_msg-msgv1 = lwa_error_stack-piovalue.
          append lwa_msg to lt_msg.

        when others.
      endcase.

      "If the use of the error stack is enabled.
      if f_use_error_stack = rs_c_true.

        "If the log has been supplied.
        if o_log is bound.

          "Transfer record to the error stack.
          call method cl_rstran_expert_rout_srv=>send_message
            exporting
              i_r_log        = o_log
              i_rule_context = wa_curr_rule
              i_seg_id       = '1'
            changing
              c_t_msg        = lt_msg.

        endif.

      endif.

    endloop. "Loop through each message for each erronious record.

  endloop. ""Loop through records flagged as erronious.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SETUP
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_REQUEST                     TYPE        RSREQUEST
* | [--->] IV_DATAPACKID                  TYPE        RSDATAPID
* | [--->] IO_LOG                         TYPE REF TO CL_RSBM_LOG_CURSOR_STEP
* | [--->] IO_LCL                         TYPE REF TO OBJECT
* | [--->] IT_SOURCE_PACKAGE              TYPE        STANDARD TABLE
* +--------------------------------------------------------------------------------------</SIGNATURE>
method setup.

  data:
    lwa_admn_dtl                   type zzx_admn_dtl.

  "Set request number.
  v_request = iv_request.

  "Set datapackage identifier.
  v_datapackid = iv_datapackid.

  "Set log.
  o_log = io_log.

  "Set local object.
  o_lcl = io_lcl.

  "Set source package.
  t_sp = it_source_package.

  "Clear result package.
  clear t_rp.

  "Retrieve reference data.
  db_read( ).

  "Determine if records are written to the error stack.
  if v_request <> 'ABAP_UNIT_TEST'.

    "Check if the error stack is turned on.
    select single *
      into lwa_admn_dtl
      from zzx_admn_dtl
      where
        prmid = 'ERROR_STACK_FOR_EXPERT_ROUTINE' and
        low = 'ZCO1O08_ZCO2O07_OFF'.
    if sy-subrc <> 0.

      "By default the error stack is active.
      f_use_error_stack = rs_c_true.

    endif.

  endif.

  "Clear the Error Stack and Error Messages.
  clear:
    t_sp_error_stack,
    t_error_msg.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0ACTIVITY
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0activity.

  data:
    lv_0network                    type /bi0/oinetwork,
    lv_0activity                   type /bi0/oiactivity.

  if cwa_xr-sf-piobjsv = '0NWA'.

    split cwa_xr-sf-piovalue at space into lv_0network lv_0activity.

    cwa_xr-rf-activity = lv_0activity.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0COORDER
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method SET_0COORDER.

  data:
    lv_coorder                     type /bi0/oipiovalue.

  case cwa_xr-sf-piobjsv.
    when '0COR'.

      lv_coorder = cwa_xr-sf-piovalue.

      shift lv_coorder left deleting leading '0'.

      cwa_xr-rf-coorder = lv_coorder.

  endcase.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0COSTCENTER
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method SET_0COSTCENTER.

  data:
    lv_part2                       type /bi0/oipiovalue,
    lv_cc                          type /bi0/oipiovalue,
    lv_costcenter                  type /bi0/oicostcenter,
    lv_timesheet                   type /bi0/oipiovalue.

  case cwa_xr-sf-piobjsv.
    when '0ATY'.

      split cwa_xr-sf-piovalue at '4000' into lv_cc lv_part2.

      split lv_part2 at space into lv_costcenter lv_timesheet.

      cwa_xr-rf-costcenter = lv_costcenter.

    when '0CCT'.

      split cwa_xr-sf-piovalue at '4000' into lv_cc lv_costcenter.

      cwa_xr-rf-costcenter = lv_costcenter.

  endcase.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0INM_INGU
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0inm_ingu.

  data:
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt.

  "Read master data.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = cwa_xr-sf-wbs_elemt.
  if sy-subrc = 0.

    cwa_xr-rf-inm_ingu = lwa_mdp_0wbs_elemt-inm_ingu.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0INM_INID
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0inm_inid.

  data:
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt.

  "Read master data.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = cwa_xr-sf-wbs_elemt.
  if sy-subrc = 0.

    cwa_xr-rf-inm_inid = lwa_mdp_0wbs_elemt-inm_inid.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0NETWORK
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0network.

  data:
    lv_0network                    type /bi0/oinetwork,
    lv_0activity                   type /bi0/oiactivity.

  if cwa_xr-sf-piobjsv = '0NWA'.

    split cwa_xr-sf-piovalue at space into lv_0network lv_0activity.

    call function 'CONVERSION_EXIT_ALPHA_INPUT'
      exporting
        input  = lv_0network
      importing
        output = lv_0network.

    cwa_xr-rf-network = lv_0network.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0PM_ORDER
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0pm_order.

  if cwa_xr-sf-piobjsv = '0COR'.

    cwa_xr-rf-pm_order = cwa_xr-sf-piovalue.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0RPM_IHGU
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0rpm_ihgu.

  data:
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt.

  "Read master data.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = cwa_xr-sf-wbs_elemt.
  if sy-subrc = 0.

    cwa_xr-rf-rpm_ihgu = lwa_mdp_0wbs_elemt-rpm_ihgu.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_0RPM_IHID
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_0rpm_ihid.

  data:
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt.

  "Read master data.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = cwa_xr-sf-wbs_elemt.
  if sy-subrc = 0.

    cwa_xr-rf-rpm_ihid = lwa_mdp_0wbs_elemt-rpm_ihid.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_INFLOW
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_inflow.

  "Set the Plan Inflow/Outflow Indicator to Inflow.
  cwa_xr-rf-/bic/zppobja = 'I'.

  "If no partner object is provided the cost is considered Direct.
  if cwa_xr-sf-piobjsv is initial.

    "Set the Plan Direct/Indirect Cost Indicator to Direct.
    cwa_xr-rf-/bic/zppctype = 'D'.

  else.

    "Set the Plan Direct/Indirect Cost Indicator to Indirect.
    cwa_xr-rf-/bic/zppctype = 'I'.

    case cwa_xr-sf-piobjsv.
      when '0ATY'. "IHS Activity.

        set_inflow_0aty( changing cwa_xr = cwa_xr ).

      when '0CCT'. "Cost Centre.

        set_inflow_0cct( changing cwa_xr = cwa_xr ).

      when '0COR'. "Order.

        set_inflow_0cor( changing cwa_xr = cwa_xr ).

      when '0POS'. "WBS Element.
      when '0NWA'. "Network Activity.
      when others.
    endcase.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_INFLOW_0ATY
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_inflow_0aty.

*#  Where the Partner Object Type is an IHS Activity [0ATY] the IHS
*   Activity is expressed as the compound of controlling area
*   and cost centre concatenated with the activity ID. For example for
*   the partner object '4000C010005   T00047' indicates a cost
*   associated with Cost Centre 'C010005'.

  "Set the Plan Partner Object Type.
  cwa_xr-rf-/bic/zppobjt = 'CCTR'.

  "Set the Plan Partner Object (Remove the controlling area).
  cwa_xr-rf-/bic/zppobj = cwa_xr-sf-piovalue+4(10).

  "Set the Plan Partner Cost Centre.
  cwa_xr-rf-/bic/zppcctr = cwa_xr-rf-/bic/zppobj.

  "Clear the Plan PPM Level 5.
  cwa_xr-rf-/bic/zppinit = ''.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_INFLOW_0CCT
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_inflow_0cct.

*#  Where the Partner Object Type is a Cost Centre [0CCT] there is no
*   requirement to transalate the Partner Object, the object value is
*   moved to the Plan Partner Object field.

  "Set the Plan Partner Object Type.
  cwa_xr-rf-/bic/zppobjt = 'CCTR'.

  "Set the Plan Partner Object (Remove the controlling area).
  cwa_xr-rf-/bic/zppobj = cwa_xr-sf-piovalue+4(10).

  "Set the Plan Partner Cost Centre.
  cwa_xr-rf-/bic/zppcctr = cwa_xr-rf-/bic/zppobj.

  "Clear the Plan PPM Level 5.
  cwa_xr-rf-/bic/zppinit = ''.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_INFLOW_0COR
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_inflow_0cor.

*#  Where the Partner Object Type is an Order [0COR] the Order
*   number is translated to a Cost Centre by looking up the
*   Responsible Cost Centre for the CO Order. The relevant
*   BW master data is retrieved in a prior setup stage.

  data:
    lwa_mdp_0coorder               type ty_wa_mdp_0coorder,
    lwa_msg                        type rstmonitor.

  "Retrieve the Responsible Cost Centre for the CO Order.
  read table th_mdp_0coorder into lwa_mdp_0coorder
    with table key
      coorder = cwa_xr-sf-piovalue.
  if sy-subrc <> 0.

    "Collect lookup error into Error Message table.
    lwa_msg-recno = cwa_xr-sf-record.
    lwa_msg-msgno = '001'.
    append lwa_msg to t_error_msg.

    "Collect record into the Error Stack table.
    append cwa_xr-sf to t_sp_error_stack.
    return.

  endif.

  "Set the Plan Inflow/Outflow indicator.
  cwa_xr-rf-/bic/zppobja = 'I'.

  "Set the Plan Partner Object Type.
  cwa_xr-rf-/bic/zppobjt = 'CCTR'.

  "Set the Plan Partner Object.
  cwa_xr-rf-/bic/zppobj = lwa_mdp_0coorder-resp_cctr.

  "Set the Plan Partner Cost Centre.
  cwa_xr-rf-/bic/zppcctr = cwa_xr-rf-/bic/zppobj.

  "Clear the Plan PPM Level 5.
  cwa_xr-rf-/bic/zppinit = ''.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_OUTFLOW
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_outflow.

  "Set the Plan Inflow/Outflow Indicator to Outflow.
  cwa_xr-rf-/bic/zppobja = 'O'.

  "If no partner object is provided the cost is considered Direct.
  if cwa_xr-sf-piobjsv is initial.

    "Set the Plan Direct/Indirect Cost Indicator to Direct.
    cwa_xr-rf-/bic/zppctype = 'D'.

  else.

    "Set the Plan Direct/Indirect Cost Indicator to Indirect.
    cwa_xr-rf-/bic/zppctype = 'I'.

    case cwa_xr-sf-piobjsv.
      when '0ATY'. "IHS Activity.
      when '0CCT'. "Cost Centre.

        set_outflow_0cct( changing cwa_xr = cwa_xr ).

      when '0COR'. "Order.

        set_outflow_0cor( changing cwa_xr = cwa_xr ).

      when '0POS'. "WBS Element.

        set_outflow_0pos( changing cwa_xr = cwa_xr ).

      when '0NWA'. "Network Activity.

        set_outflow_0nwa( changing cwa_xr = cwa_xr ).

      when others.
    endcase.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_OUTFLOW_0CCT
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_outflow_0cct.

*#  Where the Partner Object Type is a Cost Centre [0CCT] there is no
*   requirement to transalate the Partner Object, the object value is
*   moved to the Plan Partner Object field.

  "Set the Plan Partner Object Type.
  cwa_xr-rf-/bic/zppobjt = 'CCTR'.

  "Set the Plan Partner Object (Remove the controlling area).
  cwa_xr-rf-/bic/zppobj = cwa_xr-sf-piovalue+4(10).

  "Set the Plan Partner Cost Centre.
  cwa_xr-rf-/bic/zppcctr = cwa_xr-rf-/bic/zppobj.

  "Clear the Plan PPM Level 5.
  cwa_xr-rf-/bic/zppinit = ''.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_OUTFLOW_0COR
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_outflow_0cor.

  data:
    lwa_td_zcoom_o2                type ty_wa_td_zcoom_o2,
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt,
    lv_amount                      type /bi0/oiamount,
    lwa_msg                        type rstmonitor.

  lv_amount = cwa_xr-sf-amount * -1.

  "Retrieve the CO Document from the Order Postings based on the CO Document and Partner Order.
  read table th_td_zcoom_o2 into lwa_td_zcoom_o2
    with table key
      co_doc_no = cwa_xr-sf-co_doc_no
      coorder = cwa_xr-sf-piovalue
      amount = lv_amount.
  if sy-subrc <> 0.

    "Collect lookup error into Error Message table.
    lwa_msg-recno = cwa_xr-sf-record.
    lwa_msg-msgno = '002'.
    append lwa_msg to t_error_msg.

    "Collect record into the Error Stack table.
    append cwa_xr-sf to t_sp_error_stack.
    return.

  endif.

  "Set the Plan Inflow/Outflow indicator.
  cwa_xr-rf-/bic/zppobja = 'O'.

  "Check the Partner Object Type for the settlement.
  case lwa_td_zcoom_o2-piobjsv.

    when '0ATY'. "IHS Activity.

      "Order has been settled to a Cost Centre.
      cwa_xr-rf-/bic/zppobjt = 'CCTR'.

      "Set the Plan Partner Object.
      cwa_xr-rf-/bic/zppobj = lwa_td_zcoom_o2-piovalue+4(10).

      "Set the PlanPartner Cost Centre.
      cwa_xr-rf-/bic/zppcctr = cwa_xr-rf-/bic/zppobj.

      "Clear the Plan Partner PPM Level 5.
      cwa_xr-rf-/bic/zppinit = ''.

    when '0CCT'. "Cost Centre.

      "Order has been settled to a Cost Centre.
      cwa_xr-rf-/bic/zppobjt = 'CCTR'.

      "Set the Plan Partner Object.
      cwa_xr-rf-/bic/zppobj = lwa_td_zcoom_o2-piovalue+4(10).

      "Set the PlanPartner Cost Centre.
      cwa_xr-rf-/bic/zppcctr = cwa_xr-rf-/bic/zppobj.

      "Clear the Plan Partner PPM Level 5.
      cwa_xr-rf-/bic/zppinit = ''.

    when '0POS'. "WBS Element.

      "Order has been settled to a WBS Element.
      cwa_xr-rf-/bic/zppobjt = 'INIT'.

      "Retrieve the PPM Level 5 for the WBS Element.
      read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
        with table key
          wbs_elemt = lwa_td_zcoom_o2-piovalue.
      if sy-subrc <> 0.

        "Collect lookup error into Error Message table.
        lwa_msg-recno = cwa_xr-sf-record.
        lwa_msg-msgno = '003'.
        append lwa_msg to t_error_msg.

        "Collect record into the Error Stack table.
        append cwa_xr-sf to t_sp_error_stack.
        return.

      endif.

      "Set the Plan Partner Object to the Partner Object.
      cwa_xr-rf-/bic/zppobj = lwa_mdp_0wbs_elemt-ps_usr1.

      "Clear the Plan Partner Cost Centre.
      cwa_xr-rf-/bic/zppcctr = ''.

      "Set the Plan Partner PPM Level 5.
      cwa_xr-rf-/bic/zppinit = cwa_xr-rf-/bic/zppobj.

    when others.

      "Unexpected/Unaccounted for field value.
      return.

  endcase. "Check the Partner Object Type.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_OUTFLOW_0NWA
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_outflow_0nwa.

*#  Where the Partner Object Type is a Network Activity [0NWA] the
*   Network Activity is transalated to a PPLM Level 5 using a 2-step
*   lookup is required. First we retrieve the WBS Element for the
*   Network Activity. Second we retrieve the PPM Level 5 for the
*   WBS Element. The relevant BW master data is retrieved in a
*   prior setup stage.

  data:
    lv_0network                    type /bi0/oinetwork,
    lv_0activity                   type /bi0/oiactivity,
    lwa_mdp_0activity              type ty_wa_mdp_0activity,
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt,
    lwa_msg                        type rstmonitor.

  split cwa_xr-sf-piovalue at space into lv_0network lv_0activity.

  call function 'CONVERSION_EXIT_ALPHA_INPUT'
    exporting
      input  = lv_0network
    importing
      output = lv_0network.

  "First retrieve the Network Activity master data based on the Partner Object.
  read table th_mdp_0activity into lwa_mdp_0activity
    with table key
      network = lv_0network
      activity = lv_0activity.
  if sy-subrc <> 0.

    "Collect lookup error into Error Message table.
    lwa_msg-recno = cwa_xr-sf-record.
    lwa_msg-msgno = '004'.
    append lwa_msg to t_error_msg.

    "Collect record into the Error Stack table.
    append cwa_xr-sf to t_sp_error_stack.
    return.

  endif.

  "Second retrieve the WBS Element master data based on the Network Activity master data.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = lwa_mdp_0activity-wbs_elemt.
  if sy-subrc <> 0.

    "Collect lookup error into Error Message table.
    lwa_msg-recno = cwa_xr-sf-record.
    lwa_msg-msgno = '005'.
    lwa_msg-msgv1 = lwa_mdp_0activity-wbs_elemt.
    append lwa_msg to t_error_msg.

    "Collect record into the Error Stack table.
    append cwa_xr-sf to t_sp_error_stack.
    return.

  endif.

  "Set the Inflow/Outflow indicator.
  cwa_xr-rf-/bic/zppobja = 'O'.

  "Set the Plan Partner Object Type.
  cwa_xr-rf-/bic/zppobjt = 'INIT'.

  "Set the Plan Partner Object.
  cwa_xr-rf-/bic/zppobj = lwa_mdp_0wbs_elemt-ps_usr1.

  "Clear the Plan Partner Cost Centre.
  cwa_xr-rf-/bic/zppcctr = ''.

  "Set the Plan Partner PPM Level 5.
  cwa_xr-rf-/bic/zppinit = cwa_xr-rf-/bic/zppobj.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_OUTFLOW_0POS
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_outflow_0pos.

*#  Where the Partner Object Type is a WBS Element [0POS] the WBS
*   Element is translated to a PPM_Level 5 by looking up the Initiative
*   for the WBS Element. The relevant BW master data is retrieved in a
*   prior setup stage.

  data:
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt,
    lwa_msg                        type rstmonitor.

  "Retrieve the PPM Level 5 for the WBS Element.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = cwa_xr-sf-piovalue.
  if sy-subrc <> 0.

    "Collect lookup error into Error Message table.
    lwa_msg-recno = cwa_xr-sf-record.
    lwa_msg-msgno = '006'.
    append lwa_msg to t_error_msg.

    "Collect record into the Error Stack table.
    append cwa_xr-sf to t_sp_error_stack.
    return.

  endif.

  "Set the Inflow/Outflow indicator.
  cwa_xr-rf-/bic/zppobja = 'O'.

  "Set the Plan Partner Object Type.
  cwa_xr-rf-/bic/zppobjt = 'INIT'.

  "Set Plan Partner Object.
  cwa_xr-rf-/bic/zppobj = lwa_mdp_0wbs_elemt-ps_usr1.

  "Clear the Plan Partner Cost Centre.
  cwa_xr-rf-/bic/zppcctr = ''.

  "Set the Plan Partner PPM Level 5.
  cwa_xr-rf-/bic/zppinit = cwa_xr-rf-/bic/zppobj.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_PARTNERS
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_partners.

  data:
    lv_sourcefield                 type /bic/oizfipioval.

  case cwa_xr-sf-piobjsv.
    when '0ATY'.
      cwa_xr-rf-/bic/zfiacttyp = cwa_xr-sf-piovalue+4(20).

      cwa_xr-rf-/bic/zfipioval = cwa_xr-sf-piovalue+4(24) .

    when '0CCT'.
      cwa_xr-rf-part_cctr = cwa_xr-sf-piovalue+4(10).

      cwa_xr-rf-/bic/zfipioval = cwa_xr-sf-piovalue+4(24) .

    when '0COR'.
      cwa_xr-rf-part_coord = cwa_xr-sf-piovalue.

      lv_sourcefield = cwa_xr-sf-piovalue.
      shift  lv_sourcefield left deleting leading '0'.
      cwa_xr-rf-/bic/zfipioval = lv_sourcefield.

    when '0POS'.
      cwa_xr-rf-part_wbsel = cwa_xr-sf-piovalue.

      call function 'CONVERSION_EXIT_WBSEL_OUTPUT'
        exporting
          input  = cwa_xr-sf-piovalue
        importing
          output = cwa_xr-rf-/bic/zfipioval.

    when '0NWA'.

      cwa_xr-rf-/bic/zfipioval = cwa_xr-sf-piovalue.

    when '0SDP'.

      lv_sourcefield = cwa_xr-sf-piovalue+0(10).
      shift  lv_sourcefield left deleting leading '0'.
      concatenate lv_sourcefield '/' cwa_xr-sf-piovalue+14(2) into cwa_xr-rf-/bic/zfipioval.

    when others.

      cwa_xr-rf-/bic/zfipioval = cwa_xr-sf-piovalue.

  endcase.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->SET_ZCIN_GUID
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CWA_XR                         TYPE        TY_WA_XR
* +--------------------------------------------------------------------------------------</SIGNATURE>
method set_zcin_guid.

  data:
    lwa_mdp_0wbs_elemt             type ty_wa_mdp_0wbs_elemt.

  "Read master data.
  read table th_mdp_0wbs_elemt into lwa_mdp_0wbs_elemt
    with table key
      wbs_elemt = cwa_xr-sf-wbs_elemt.
  if sy-subrc = 0.

    cwa_xr-rf-/bic/zcin_guid = lwa_mdp_0wbs_elemt-/bic/zcin_guid.

  endif.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_XOT_TRXR_ZCO2O07->TRANSFORM
* +-------------------------------------------------------------------------------------------------+
* +--------------------------------------------------------------------------------------</SIGNATURE>
method transform.

  data:
    lwa_xr                         type ty_wa_xr.

  "Process each record in the source package.
  loop at t_sp into lwa_xr-sf.

    clear lwa_xr-rf.

    "Set the data package ID.
    lwa_xr-rf-datapakid = v_datapackid.

    "Transfer field values from source to target.
    move-corresponding lwa_xr-sf to lwa_xr-rf.

    "Derive from Partner Object.
    set_0network( changing cwa_xr = lwa_xr ).
    set_0activity( changing cwa_xr = lwa_xr ).
    set_0pm_order( changing cwa_xr = lwa_xr ).
    set_0costcenter( changing cwa_xr = lwa_xr ).
    set_0coorder( changing cwa_xr = lwa_xr ).

    "Read from WBS master data.
    set_0inm_inid( changing cwa_xr = lwa_xr ).
    set_0inm_ingu( changing cwa_xr = lwa_xr ).
    set_0rpm_ihgu( changing cwa_xr = lwa_xr ).
    set_0rpm_ihid( changing cwa_xr = lwa_xr ).
    set_zcin_guid( changing cwa_xr = lwa_xr ).

    "Derivivation depends on Inflow/Outflow indicator.
    case lwa_xr-sf-db_cr_ind.
      when 'S'. "Inflow (Debit Posting or Receiver Debit Posting).

        set_inflow( changing cwa_xr = lwa_xr ).

      when 'H'. "Outflow (Credit Posting or Sender Credit Posting).

        set_outflow( changing cwa_xr = lwa_xr ).

    endcase.

    "If the local object and log have been supplied.
    if o_lcl is bound and o_log is bound.

      "Set the source-target matrix.
      call method o_lcl->('NEW_RECORD__EXPERT_ROUTINE')
        exporting
          log           = o_log
          source_segid  = 1
          source_record = lwa_xr-sf-record
          target_segid  = 1
        importing
          record_new    = lwa_xr-rf-record.

    endif.

    append lwa_xr-rf to t_rp.

  endloop. "Process each record in the source package.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_XOT_TRXR_ZCO2O07->ZIF_XOT_TRXR~DATA
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_REQUEST                     TYPE        RSREQUEST
* | [--->] IV_DATAPACKID                  TYPE        RSDATAPID
* | [--->] IO_LOG                         TYPE REF TO CL_RSBM_LOG_CURSOR_STEP(optional)
* | [--->] IO_LCL                         TYPE REF TO OBJECT(optional)
* | [<---] ET_RESULT_PACKAGE              TYPE        STANDARD TABLE
* | [<-->] CT_SOURCE_PACKAGE              TYPE        STANDARD TABLE
* +--------------------------------------------------------------------------------------</SIGNATURE>
method zif_xot_trxr~data.

  "Setup before transformation.
  call method me->setup
    exporting
      iv_request        = iv_request
      iv_datapackid     = iv_datapackid
      io_log            = io_log
      io_lcl            = io_lcl
      it_source_package = ct_source_package.

  "Execute transformation.
  call method me->transform.

  "Cleanup after transformation.
  call method me->cleanup
    importing
      et_result_package = et_result_package.

endmethod.
ENDCLASS.
