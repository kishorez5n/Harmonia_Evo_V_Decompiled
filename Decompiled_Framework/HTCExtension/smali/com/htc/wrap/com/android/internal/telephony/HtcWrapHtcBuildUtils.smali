.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;
.super Ljava/lang/Object;
.source "HtcWrapHtcBuildUtils.java"


# static fields
.field public static final CDMA_EHRPD_CONFIG:Z

.field public static final FEATURE_CT_CUSTOMIZATION:Z

.field public static final IS_CHNIA:Z

.field public static final IS_CMCC:Z

.field public static final SUPPORT_VT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CMCC:Z

    sput-boolean v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->IS_CMCC:Z

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->SUPPORT_VT:Z

    sput-boolean v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->SUPPORT_VT:Z

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->IS_CHNIA:Z

    sput-boolean v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->IS_CHNIA:Z

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->CDMA_EHRPD_CONFIG:Z

    sput-boolean v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->CDMA_EHRPD_CONFIG:Z

    sget-boolean v0, Lcom/android/internal/telephony/HtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    sput-boolean v0, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapHtcBuildUtils;->FEATURE_CT_CUSTOMIZATION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CMCC_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CMCC_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static CT_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static GENERIC_VoIP_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_VoIP_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static GENERIC_WPHONE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static final IS_DEBUG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v0

    return v0
.end method

.method public static final IS_VM_OMADM()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_VM_OMADM()Z

    move-result v0

    return v0
.end method

.method public static LTE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->LTE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static QMI_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->QMI_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static SPRINT_ROAMING_ENHANCE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_ROAMING_ENHANCE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static SPRINT_WPHONE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->SPRINT_WPHONE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static STE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->STE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static VERIZON_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static VERIZON_LTE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static VERIZON_LTE_WPHONE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_LTE_WPHONE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static VERIZON_WPHONE_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static final VZW_GLOBAL_ROAMING_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VZW_GLOBAL_ROAMING_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static WPHONE_UI_CONFIG()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->WPHONE_UI_CONFIG()Z

    move-result v0

    return v0
.end method

.method public static final appendfilePath()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->appendfilePath()Z

    move-result v0

    return v0
.end method

.method public static final enableRUIMCard()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableRUIMCard()Z

    move-result v0

    return v0
.end method

.method public static enableSimAuthentication()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSimAuthentication()Z

    move-result v0

    return v0
.end method

.method public static final enableSkypeCall()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableSkypeCall()Z

    move-result v0

    return v0
.end method

.method public static enableTmoWifiIms()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    return v0
.end method

.method public static enableVoRAIms()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableVoRAIms()Z

    move-result v0

    return v0
.end method

.method public static forcePlusCodeTo011()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->forcePlusCodeTo011()Z

    move-result v0

    return v0
.end method

.method public static getHtcSenseVersion()F
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->getHtcSenseVersion()F

    move-result v0

    return v0
.end method

.method public static isPhoneFeatureEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static isUICC()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isUICC()Z

    move-result v0

    return v0
.end method

.method public static isVTEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVTEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVoLTEEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isVoLTEEnabled()Z

    move-result v0

    return v0
.end method

.method public static isWIFIOnly()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isWIFIOnly()Z

    move-result v0

    return v0
.end method

.method public static supportAdditionalNumbersInSim()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v0

    return v0
.end method

.method public static supportEMS()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportEMS()Z

    move-result v0

    return v0
.end method

.method public static supportSimHotSwapFeature()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportSimHotSwapFeature()Z

    move-result v0

    return v0
.end method

.method public static supportUSSDVerification()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportUSSDVerification()Z

    move-result v0

    return v0
.end method
