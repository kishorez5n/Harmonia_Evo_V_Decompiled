.class public Lcom/htc/android/epst/translator/SidNidTranslator;
.super Ljava/lang/Object;
.source "SidNidTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/translator/Translator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SidNidTranslator"

.field private static final NUMBER_LENGTH:I = 0x5


# instance fields
.field public INDEX:I

.field private mController:Lcom/htc/android/epst/nvitem/NvItemController;

.field private mUpdater:Lcom/htc/android/epst/SettingValueUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->INDEX:I

    .line 33
    invoke-static {}, Lcom/htc/android/epst/nvitem/NvItemController;->getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 45
    return-void
.end method

.method private getSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    .line 110
    iget-object v4, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    const/16 v5, 0x103

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v2

    check-cast v2, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;

    .line 112
    .local v2, sidnid:Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;
    iget v4, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->INDEX:I

    invoke-virtual {v2, v4}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->getSIDNID(I)[Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, sidnidVal:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v1, v3, v4

    .line 114
    .local v1, sid:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v3, v4

    .line 115
    .local v0, nid:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v5

    const v6, 0x7f04000f

    invoke-virtual {v5, v6}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getInputFilters()[Landroid/text/InputFilter;
    .locals 4

    .prologue
    .line 37
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2}, Landroid/text/method/DigitsKeyListener;-><init>()V

    aput-object v2, v0, v1

    .line 38
    .local v0, filters:[Landroid/text/InputFilter;
    return-object v0
.end method

.method public getInputVerifier()Lcom/htc/android/epst/InputVerifier;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;

    invoke-direct {v0, p0}, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;-><init>(Lcom/htc/android/epst/translator/SidNidTranslator;)V

    return-object v0
.end method

.method public getTypedInfo()Ljava/util/List;
    .locals 3

    .prologue
    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, ret:Ljava/util/List;
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v0
.end method

.method public refreshGroupSettings()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v0}, Lcom/htc/android/epst/SettingValueUpdater;->updateAllSettings()V

    .line 143
    return-void
.end method

.method public requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "itemId"
    .parameter "updater"

    .prologue
    .line 146
    iput-object p2, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 147
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/SidNidTranslator;->sendReadRequest(I)V

    .line 148
    return-void
.end method

.method public requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
    .locals 0
    .parameter "modifiedValue"
    .parameter "updater"

    .prologue
    .line 152
    iput-object p2, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    .line 153
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/SidNidTranslator;->sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V

    .line 154
    return-void
.end method

.method public retrieveItemAndUpdate(II)V
    .locals 2
    .parameter "itemId"
    .parameter "status"

    .prologue
    .line 157
    const-string v0, ""

    .line 158
    .local v0, value:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/htc/android/epst/translator/SidNidTranslator;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;

    invoke-interface {v1, p1, p2, v0}, Lcom/htc/android/epst/SettingValueUpdater;->update(IILjava/lang/String;)V

    .line 162
    return-void
.end method

.method public sendReadRequest(I)V
    .locals 3
    .parameter "itemId"

    .prologue
    .line 119
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v0

    const/16 v1, 0x26

    const/16 v2, 0x103

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/htc/android/epst/Port;->RequestRead(IIILcom/htc/android/epst/translator/Translator;)V

    .line 121
    return-void
.end method

.method public sendWriteRequest(Lcom/htc/android/epst/SettingItem;)V
    .locals 8
    .parameter "modifiedValue"

    .prologue
    const/16 v7, 0x103

    .line 124
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, sidnidString:Ljava/lang/String;
    const-string v4, "/"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/android/epst/SettingItem;->getId()I

    move-result v0

    .line 127
    .local v0, itemId:I
    iget-object v4, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->mController:Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-virtual {v4, v7}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v1

    check-cast v1, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;

    .line 129
    .local v1, sidnid:Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;
    iget v4, p0, Lcom/htc/android/epst/translator/SidNidTranslator;->INDEX:I

    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/htc/android/epst/nvitem/DM_NVI_ID_HOME_SID_NID;->setSIDNID(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/htc/android/epst/Port;->getSingleton()Lcom/htc/android/epst/Port;

    move-result-object v4

    const/16 v5, 0x27

    invoke-virtual {v4, v5, v7, v0, p0}, Lcom/htc/android/epst/Port;->RequestWrite(IIILcom/htc/android/epst/translator/Translator;)V

    .line 132
    return-void
.end method
