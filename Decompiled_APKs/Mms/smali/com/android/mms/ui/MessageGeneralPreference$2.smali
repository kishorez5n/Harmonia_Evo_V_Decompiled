.class Lcom/android/mms/ui/MessageGeneralPreference$2;
.super Ljava/lang/Object;
.source "MessageGeneralPreference.java"

# interfaces
.implements Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageGeneralPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageGeneralPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageGeneralPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/mms/ui/MessageGeneralPreference$2;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 2
    .parameter "limit"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference$2;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    #getter for: Lcom/android/mms/ui/MessageGeneralPreference;->mMmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {v0}, Lcom/android/mms/ui/MessageGeneralPreference;->access$200(Lcom/android/mms/ui/MessageGeneralPreference;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageGeneralPreference$2;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/MessageGeneralPreference$2;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    #calls: Lcom/android/mms/ui/MessageGeneralPreference;->setMmsDisplayLimit()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageGeneralPreference;->access$300(Lcom/android/mms/ui/MessageGeneralPreference;)V

    .line 327
    return-void
.end method
