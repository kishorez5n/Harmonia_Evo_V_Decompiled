.class public Lcom/htc/lockscreen/app/debug/MyLog;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HtcLockScreen"

.field private static final localLOGV:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsDebugLog()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 25
    const-string v0, "HtcLockScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 55
    const-string v0, "HtcLockScreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 34
    const-string v0, "HtcLockScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 68
    const-string v0, "HtcLockScreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 72
    const-string v0, "HtcLockScreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 75
    const-string v0, "HtcLockScreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 38
    const-string v0, "HtcLockScreen"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 21
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 51
    return-void
.end method

.method private static output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 15
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 45
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 30
    const-string v0, "HtcLockScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"

    .prologue
    .line 60
    const-string v0, "HtcLockScreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "prefix"
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 64
    const-string v0, "HtcLockScreen"

    invoke-static {p0, p1}, Lcom/htc/lockscreen/app/debug/MyLog;->output(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-void
.end method
