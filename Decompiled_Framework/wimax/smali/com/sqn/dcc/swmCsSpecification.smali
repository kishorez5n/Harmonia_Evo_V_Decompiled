.class public Lcom/sqn/dcc/swmCsSpecification;
.super Ljava/lang/Object;
.source "swmCsSpecification.java"


# static fields
.field public static final SWM_CS_802_1Q:I = 0x4

.field public static final SWM_CS_802_3:I = 0x3

.field public static final SWM_CS_ATM:I = 0x9

.field public static final SWM_CS_IPv4:I = 0x1

.field public static final SWM_CS_IPv4_OVER_802_1Q:I = 0x7

.field public static final SWM_CS_IPv4_OVER_802_3:I = 0x5

.field public static final SWM_CS_IPv6:I = 0x2

.field public static final SWM_CS_IPv6_OVER_802_1Q:I = 0x8

.field public static final SWM_CS_IPv6_OVER_802_3:I = 0x6

.field public static final SWM_CS_NONE:I = 0x0

.field public static final SWM_CS_QTY:I = 0xa


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BLcom/sqn/dcc/swmCsSpecification;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmCsSpecification;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/sqn/dcc/swmCsSpecification;->value:I

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BJLcom/sqn/dcc/OutValue;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static unmarshall([BLcom/sqn/dcc/swmCsSpecification;Lcom/sqn/dcc/OutValue;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/sqn/dcc/swmCsSpecification;",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    array-length v1, p0

    iget-object v0, p2, Lcom/sqn/dcc/OutValue;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    if-ge v1, v0, :cond_0

    const v0, -0xfffb

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p2}, Lcom/sqn/dcc/Util;->Copy32FromBuffer([BLcom/sqn/dcc/OutValue;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p1, Lcom/sqn/dcc/swmCsSpecification;->value:I

    const/4 v0, 0x0

    goto :goto_0
.end method
