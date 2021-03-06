.class public Lcom/sprint/internal/MIPSwitcher;
.super Ljava/lang/Object;
.source "MIPSwitcher.java"


# static fields
.field public static CONNECTED:Ljava/lang/String;

.field public static CONNECTING:Ljava/lang/String;

.field private static final DBG:Z

.field public static DISCONNECTED:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;

.field public static callback:Z

.field public static staCurMIPindex:I

.field public static staMIP0isConnected:Z

.field public static staMIP1isConnected:Z

.field public static staReqMIPindex:I


# instance fields
.field private Release_Slot1_Checking:Z

.field public bResult:Z

.field protected cm:Landroid/net/ConnectivityManager;

.field protected mContext:Landroid/content/Context;

.field private mSwitchReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "MIPSwitcher"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    const-string v0, "DISCONNECTED"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->DISCONNECTED:Ljava/lang/String;

    const-string v0, "CONNECTED"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->CONNECTED:Ljava/lang/String;

    const-string v0, "CONNECTING"

    sput-object v0, Lcom/sprint/internal/MIPSwitcher;->CONNECTING:Ljava/lang/String;

    sput v2, Lcom/sprint/internal/MIPSwitcher;->staCurMIPindex:I

    sput-boolean v1, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    sput v2, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I

    sput-boolean v1, Lcom/sprint/internal/MIPSwitcher;->staMIP1isConnected:Z

    sput-boolean v1, Lcom/sprint/internal/MIPSwitcher;->staMIP0isConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/internal/MIPSwitcher;->bResult:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    new-instance v0, Lcom/sprint/internal/MIPSwitcher$1;

    invoke-direct {v0, p0}, Lcom/sprint/internal/MIPSwitcher$1;-><init>(Lcom/sprint/internal/MIPSwitcher;)V

    iput-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->mSwitchReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->cm:Landroid/net/ConnectivityManager;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sprint/internal/MIPSwitcher;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sprint/internal/MIPSwitcher;->mSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sprint/internal/MIPSwitcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sprint/internal/MIPSwitcher;->mSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public connectMIP0()Z
    .locals 11

    const-wide/16 v9, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-boolean v6, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v6, 0x0

    :try_start_0
    iput-boolean v6, p0, Lcom/sprint/internal/MIPSwitcher;->bResult:Z

    const/4 v6, 0x0

    sput-boolean v6, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    sget-object v6, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    const-string v7, "connectMIP0"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sprint/internal/MIPSwitcher;->cm:Landroid/net/ConnectivityManager;

    const/4 v7, 0x0

    const-string v8, "enableADMIN"

    invoke-virtual {v6, v7, v8}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->registerReceiver()V

    sget-object v6, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "rslt:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v0, 0x1d4c0

    :cond_2
    sget-boolean v6, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    if-nez v6, :cond_3

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    sub-long/2addr v0, v9

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    :cond_3
    const/4 v6, 0x0

    sput-boolean v6, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->unregisterReceiver()V

    sget v6, Lcom/sprint/internal/MIPSwitcher;->staCurMIPindex:I

    sget v7, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v6, v7, :cond_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    sget-boolean v0, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    sput v0, Lcom/sprint/internal/MIPSwitcher;->staReqMIPindex:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->unregisterReceiver()V

    goto :goto_0
.end method

.method public disconnectMIP0(Z)I
    .locals 9

    const-wide/16 v7, 0x3e8

    const/4 v3, 0x0

    sget-boolean v4, Lcom/sprint/internal/SystemProperties;->IS_NOT_SPC_PROJECT:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    :try_start_0
    sget-object v4, Lcom/sprint/internal/MIPSwitcher;->TAG:Ljava/lang/String;

    const-string v5, "disconnectMIP0"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    iget-object v4, p0, Lcom/sprint/internal/MIPSwitcher;->cm:Landroid/net/ConnectivityManager;

    const/4 v5, 0x0

    const-string v6, "enableADMIN"

    invoke-virtual {v4, v5, v6}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    iget-boolean v4, p0, Lcom/sprint/internal/MIPSwitcher;->Release_Slot1_Checking:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->registerReceiver()V

    const-wide/32 v0, 0x1d4c0

    :cond_2
    sget-boolean v4, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    if-nez v4, :cond_3

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    sub-long/2addr v0, v7

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    :cond_3
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sprint/internal/MIPSwitcher;->callback:Z

    invoke-direct {p0}, Lcom/sprint/internal/MIPSwitcher;->unregisterReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x1

    goto :goto_0
.end method
