.class Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;
.super Landroid/content/BroadcastReceiver;
.source "WeatherDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->initWeatherDataReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;


# direct methods
.method constructor <init>(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    .line 297
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, mAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.sync.provider.weather.result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v1, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/weatheridlescreen/data/WeatherDataLoader$2;->this$0:Lcom/htc/weatheridlescreen/data/WeatherDataLoader;

    #getter for: Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->mNonUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/weatheridlescreen/data/WeatherDataLoader;->access$600(Lcom/htc/weatheridlescreen/data/WeatherDataLoader;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 306
    :cond_0
    return-void
.end method
