.class public final enum Lcom/htc/photowidget3d/image/ImageManager$DataLocation;
.super Ljava/lang/Enum;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/image/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/photowidget3d/image/ImageManager$DataLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

.field public static final enum ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

.field public static final enum EXTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

.field public static final enum INTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

.field public static final enum NONE:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

.field public static final enum PHONE:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->NONE:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->INTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->PHONE:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    new-instance v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v6}, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    sget-object v1, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->NONE:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->INTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->PHONE:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->ALL:Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->$VALUES:[Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/photowidget3d/image/ImageManager$DataLocation;
    .locals 1
    .parameter "name"

    .prologue
    .line 140
    const-class v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    return-object v0
.end method

.method public static values()[Lcom/htc/photowidget3d/image/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->$VALUES:[Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    invoke-virtual {v0}, [Lcom/htc/photowidget3d/image/ImageManager$DataLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/photowidget3d/image/ImageManager$DataLocation;

    return-object v0
.end method
