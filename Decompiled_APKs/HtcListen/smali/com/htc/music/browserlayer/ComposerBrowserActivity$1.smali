.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ComposerBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showSpinner(Z)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$100(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->isAsyncQuerying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->showSpinner(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->isExternalStorageUnMount(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->removeDialog(I)V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v1, v3}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->removeDialog(I)V

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mPlaylistUri:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$000(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->finish()V

    goto :goto_1
.end method
