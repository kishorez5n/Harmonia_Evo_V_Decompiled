.class Lcom/android/settings/ApnSettings$3;
.super Ljava/lang/Thread;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnSettings;->printAPNData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 726
    const/4 v3, 0x0

    .line 727
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 728
    .local v4, whereArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->getOperatorNumeric()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$900(Lcom/android/settings/ApnSettings;)Ljava/lang/String;

    move-result-object v10

    .line 730
    .local v10, numeric:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mIsMVNO:Z
    invoke-static {v0}, Lcom/android/settings/ApnSettings;->access$700(Lcom/android/settings/ApnSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 748
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 751
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 752
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    .line 753
    .local v8, length:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 754
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 757
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 758
    .local v12, result:Ljava/lang/StringBuilder;
    const-string v0, "Cust_APN: "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v8, :cond_2

    .line 760
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 761
    .local v9, name:Ljava/lang/String;
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 762
    .local v13, value:Ljava/lang/String;
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 735
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v8           #length:I
    .end local v9           #name:Ljava/lang/String;
    .end local v12           #result:Ljava/lang/StringBuilder;
    .end local v13           #value:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    iget-boolean v0, v0, Lcom/android/settings/ApnSettings;->enterOperatorPicker:Z

    if-eqz v0, :cond_1

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND operator is not null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApnSettings$3;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mvno_operator"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 741
    .local v11, op:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn <> \'\' AND name <> \'\' AND operator = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 744
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #whereArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v11, v4, v0

    .restart local v4       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 767
    .end local v11           #op:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v8       #length:I
    .restart local v12       #result:Ljava/lang/StringBuilder;
    :cond_2
    const-string v0, "ApnSettings"

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 770
    .end local v7           #i:I
    .end local v12           #result:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 772
    .end local v8           #length:I
    :cond_4
    return-void
.end method
