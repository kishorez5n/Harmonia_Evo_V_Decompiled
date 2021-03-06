.class public Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "HtcVipListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcVipListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/blacklist/HtcVipListActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 741
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 742
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 743
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcVipListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/blacklist/HtcVipListActivity;

    .line 749
    .local v0, activity:Lcom/android/htccontacts/blacklist/HtcVipListActivity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    .line 751
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 753
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->setAdapter(Landroid/database/Cursor;)V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    if-eqz p3, :cond_0

    .line 759
    #getter for: Lcom/android/htccontacts/blacklist/HtcVipListActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v0}, Lcom/android/htccontacts/blacklist/HtcVipListActivity;->access$200(Lcom/android/htccontacts/blacklist/HtcVipListActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
