.class public final enum Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
.super Ljava/lang/Enum;
.source "WeatherForecast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UNIT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

.field public static final enum _C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

.field public static final enum _F:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    const-string v1, "_F"

    invoke-direct {v0, v1, v2}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_F:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    new-instance v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    const-string v1, "_C"

    invoke-direct {v0, v1, v3}, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_F:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->_C:Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->$VALUES:[Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    .locals 1
    .parameter "name"

    .prologue
    .line 7
    const-class v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    return-object v0
.end method

.method public static values()[Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->$VALUES:[Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    invoke-virtual {v0}, [Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/idlescreen/base/ctrl/weather/WeatherForecast$UNIT;

    return-object v0
.end method
