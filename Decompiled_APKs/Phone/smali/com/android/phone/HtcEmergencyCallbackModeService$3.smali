.class Lcom/android/phone/HtcEmergencyCallbackModeService$3;
.super Landroid/os/CountDownTimer;
.source "HtcEmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcEmergencyCallbackModeService;->startTimerNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcEmergencyCallbackModeService;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcEmergencyCallbackModeService;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/HtcEmergencyCallbackModeService$3;->this$0:Lcom/android/phone/HtcEmergencyCallbackModeService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onTick(J)V
    .locals 1
    .parameter "millisUntilFinished"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/phone/HtcEmergencyCallbackModeService$3;->this$0:Lcom/android/phone/HtcEmergencyCallbackModeService;

    #setter for: Lcom/android/phone/HtcEmergencyCallbackModeService;->mTimeLeft:J
    invoke-static {v0, p1, p2}, Lcom/android/phone/HtcEmergencyCallbackModeService;->access$102(Lcom/android/phone/HtcEmergencyCallbackModeService;J)J

    .line 147
    iget-object v0, p0, Lcom/android/phone/HtcEmergencyCallbackModeService$3;->this$0:Lcom/android/phone/HtcEmergencyCallbackModeService;

    #calls: Lcom/android/phone/HtcEmergencyCallbackModeService;->showNotification(J)V
    invoke-static {v0, p1, p2}, Lcom/android/phone/HtcEmergencyCallbackModeService;->access$200(Lcom/android/phone/HtcEmergencyCallbackModeService;J)V

    .line 148
    return-void
.end method