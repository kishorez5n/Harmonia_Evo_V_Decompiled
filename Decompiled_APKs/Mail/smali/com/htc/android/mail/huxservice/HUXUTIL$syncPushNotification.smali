.class public Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;
.super Ljava/lang/Object;
.source "HUXUTIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/huxservice/HUXUTIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "syncPushNotification"
.end annotation


# instance fields
.field endtDate:Ljava/lang/String;

.field startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .parameter "xobj"

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-static {p1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_get_attr(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, attr:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 396
    const-string v1, "startDate"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;->startDate:Ljava/lang/String;

    .line 397
    const-string v1, "endDate"

    invoke-static {v0, v1}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXUTIL$syncPushNotification;->endtDate:Ljava/lang/String;

    .line 399
    :cond_0
    return-void
.end method
