.class Lcom/sqn/dcc/agscGetLogList;
.super Ljava/lang/Object;
.source "agscGetLogList.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "GetLogList"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscGetLogList;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static unmarshall([BILcom/sqn/dcc/OutValue;Lcom/sqn/dcc/OutArray;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sqn/dcc/OutArray",
            "<",
            "Lcom/sqn/dcc/LogDesc;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v4

    long-to-int v0, v4

    new-array v4, v0, [Lcom/sqn/dcc/LogDesc;

    iput-object v4, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/LogDesc;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/LogDesc;

    new-instance v5, Lcom/sqn/dcc/LogDesc;

    invoke-direct {v5}, Lcom/sqn/dcc/LogDesc;-><init>()V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/LogDesc;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p3, Lcom/sqn/dcc/OutArray;->_array:[Ljava/lang/Object;

    check-cast v4, [Lcom/sqn/dcc/LogDesc;

    aget-object v4, v4, v1

    invoke-static {p0, v4, p2}, Lcom/sqn/dcc/LogDesc;->unmarshall([BLcom/sqn/dcc/LogDesc;Lcom/sqn/dcc/OutValue;)I

    move-result v2

    if-eqz v2, :cond_1

    move v3, v2

    :goto_2
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2
.end method
