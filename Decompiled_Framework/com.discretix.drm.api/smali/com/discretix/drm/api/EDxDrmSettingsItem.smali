.class public final enum Lcom/discretix/drm/api/EDxDrmSettingsItem;
.super Ljava/lang/Enum;
.source "EDxDrmSettingsItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/EDxDrmSettingsItem$SwigNext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/discretix/drm/api/EDxDrmSettingsItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/discretix/drm/api/EDxDrmSettingsItem;

.field public static final enum DX_NUM_OF_SETTINGS_ITEMS:Lcom/discretix/drm/api/EDxDrmSettingsItem;

.field public static final enum DX_SETTINGS_SILENT_ON_ROAMING:Lcom/discretix/drm/api/EDxDrmSettingsItem;

.field public static final enum DX_SETTINGS_TRANSACTION_TRACKING:Lcom/discretix/drm/api/EDxDrmSettingsItem;


# instance fields
.field private final swigValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    const-string v1, "DX_SETTINGS_TRANSACTION_TRACKING"

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/EDxDrmSettingsItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->DX_SETTINGS_TRANSACTION_TRACKING:Lcom/discretix/drm/api/EDxDrmSettingsItem;

    new-instance v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    const-string v1, "DX_SETTINGS_SILENT_ON_ROAMING"

    invoke-direct {v0, v1, v3}, Lcom/discretix/drm/api/EDxDrmSettingsItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->DX_SETTINGS_SILENT_ON_ROAMING:Lcom/discretix/drm/api/EDxDrmSettingsItem;

    new-instance v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    const-string v1, "DX_NUM_OF_SETTINGS_ITEMS"

    invoke-direct {v0, v1, v4}, Lcom/discretix/drm/api/EDxDrmSettingsItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->DX_NUM_OF_SETTINGS_ITEMS:Lcom/discretix/drm/api/EDxDrmSettingsItem;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/discretix/drm/api/EDxDrmSettingsItem;

    sget-object v1, Lcom/discretix/drm/api/EDxDrmSettingsItem;->DX_SETTINGS_TRANSACTION_TRACKING:Lcom/discretix/drm/api/EDxDrmSettingsItem;

    aput-object v1, v0, v2

    sget-object v1, Lcom/discretix/drm/api/EDxDrmSettingsItem;->DX_SETTINGS_SILENT_ON_ROAMING:Lcom/discretix/drm/api/EDxDrmSettingsItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/discretix/drm/api/EDxDrmSettingsItem;->DX_NUM_OF_SETTINGS_ITEMS:Lcom/discretix/drm/api/EDxDrmSettingsItem;

    aput-object v1, v0, v4

    sput-object v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->$VALUES:[Lcom/discretix/drm/api/EDxDrmSettingsItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/discretix/drm/api/EDxDrmSettingsItem$SwigNext;->access$008()I

    move-result v0

    iput v0, p0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    add-int/lit8 v0, p3, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmSettingsItem$SwigNext;->access$002(I)I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/discretix/drm/api/EDxDrmSettingsItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/discretix/drm/api/EDxDrmSettingsItem;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iget v0, p3, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    iput v0, p0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    iget v0, p0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/discretix/drm/api/EDxDrmSettingsItem$SwigNext;->access$002(I)I

    return-void
.end method

.method public static swigToEnum(I)Lcom/discretix/drm/api/EDxDrmSettingsItem;
    .locals 8

    const-class v5, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/discretix/drm/api/EDxDrmSettingsItem;

    array-length v5, v4

    if-ge p0, v5, :cond_1

    if-ltz p0, :cond_1

    aget-object v5, v4, p0

    iget v5, v5, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    if-ne v5, p0, :cond_1

    aget-object v3, v4, p0

    :cond_0
    return-object v3

    :cond_1
    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    iget v5, v3, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    if-eq v5, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No enum "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-class v7, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/discretix/drm/api/EDxDrmSettingsItem;
    .locals 1

    const-class v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;

    return-object v0
.end method

.method public static values()[Lcom/discretix/drm/api/EDxDrmSettingsItem;
    .locals 1

    sget-object v0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->$VALUES:[Lcom/discretix/drm/api/EDxDrmSettingsItem;

    invoke-virtual {v0}, [Lcom/discretix/drm/api/EDxDrmSettingsItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/discretix/drm/api/EDxDrmSettingsItem;

    return-object v0
.end method


# virtual methods
.method public final swigValue()I
    .locals 1

    iget v0, p0, Lcom/discretix/drm/api/EDxDrmSettingsItem;->swigValue:I

    return v0
.end method
