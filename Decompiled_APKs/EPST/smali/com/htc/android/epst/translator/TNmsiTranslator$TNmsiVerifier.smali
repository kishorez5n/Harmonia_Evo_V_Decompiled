.class public Lcom/htc/android/epst/translator/TNmsiTranslator$TNmsiVerifier;
.super Ljava/lang/Object;
.source "TNmsiTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/TNmsiTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TNmsiVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/TNmsiTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/TNmsiTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/android/epst/translator/TNmsiTranslator$TNmsiVerifier;->this$0:Lcom/htc/android/epst/translator/TNmsiTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 2
    .parameter "input"

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/TNmsiTranslator$TNmsiVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f040033

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
