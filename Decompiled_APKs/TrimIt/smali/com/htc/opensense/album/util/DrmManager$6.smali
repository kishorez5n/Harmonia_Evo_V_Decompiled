.class final Lcom/htc/opensense/album/util/DrmManager$6;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/opensense/album/util/ImageManager$DrmMedia;Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/htc/opensense/album/util/DrmManager$6;->val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1450
    const/4 v0, 0x0

    .line 1451
    .local v0, res:Z
    iget-object v1, p0, Lcom/htc/opensense/album/util/DrmManager$6;->val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/htc/opensense/album/util/DrmManager$6;->val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;

    invoke-interface {v1}, Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;->onCancel()Z

    move-result v0

    .line 1454
    :cond_0
    if-eqz v0, :cond_1

    .line 1455
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1459
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 1462
    :cond_1
    return-void
.end method
