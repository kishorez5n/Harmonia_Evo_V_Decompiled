.class Lcom/htc/WifiRouter/UserManagement$9;
.super Ljava/lang/Object;
.source "UserManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/WifiRouter/UserManagement;->addMacToWhiteList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/WifiRouter/UserManagement;

.field final synthetic val$macaddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/WifiRouter/UserManagement;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/htc/WifiRouter/UserManagement$9;->this$0:Lcom/htc/WifiRouter/UserManagement;

    iput-object p2, p0, Lcom/htc/WifiRouter/UserManagement$9;->val$macaddress:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 827
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 828
    sget-object v0, Lcom/htc/WifiRouter/UserManagement;->mWhiteList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$9;->val$macaddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v0, Lcom/htc/WifiRouter/WifiRouter;->mRequestList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$9;->val$macaddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 830
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$9;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const/4 v1, 0x1

    #setter for: Lcom/htc/WifiRouter/UserManagement;->w_dirty:Z
    invoke-static {v0, v1}, Lcom/htc/WifiRouter/UserManagement;->access$2802(Lcom/htc/WifiRouter/UserManagement;Z)Z

    .line 831
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$9;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->wlistAdapter:Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$2900(Lcom/htc/WifiRouter/UserManagement;)Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/WifiRouter/UserManagement$AllowedListAdapter;->notifyDataSetChanged()V

    .line 832
    iget-object v0, p0, Lcom/htc/WifiRouter/UserManagement$9;->this$0:Lcom/htc/WifiRouter/UserManagement;

    #getter for: Lcom/htc/WifiRouter/UserManagement;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/WifiRouter/UserManagement;->access$3000(Lcom/htc/WifiRouter/UserManagement;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/WifiRouter/UserManagement$9;->this$0:Lcom/htc/WifiRouter/UserManagement;

    const v2, 0x7f09005f

    invoke-virtual {v1, v2}, Lcom/htc/WifiRouter/UserManagement;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 833
    return-void
.end method
