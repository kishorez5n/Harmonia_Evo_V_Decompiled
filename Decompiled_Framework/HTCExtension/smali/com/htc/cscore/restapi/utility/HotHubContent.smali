.class public Lcom/htc/cscore/restapi/utility/HotHubContent;
.super Ljava/lang/Object;
.source "HotHubContent.java"


# instance fields
.field dateArray:[Ljava/lang/String;

.field rsp:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

.field zeroCallMade:Z


# direct methods
.method public constructor <init>(Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/cscore/restapi/utility/HotHubContent;->dateArray:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/cscore/restapi/utility/HotHubContent;->zeroCallMade:Z

    iput-object p1, p0, Lcom/htc/cscore/restapi/utility/HotHubContent;->rsp:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    return-void
.end method


# virtual methods
.method public getFilteredHtcHubContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/htc/cscore/restapi/json/HtcHubContent;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/htc/cscore/restapi/utility/HotHubContent;->zeroCallMade:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cscore/restapi/utility/HotHubContent;->rsp:Lcom/htc/cscore/restapi/proxy/RestServicesProxy;

    const-string v11, "date"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->getFilteredHtcHubContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/htc/cscore/restapi/json/HtcHubContent;

    move-result-object v14

    new-instance v16, Lcom/htc/cscore/restapi/json/HtcHubContent;

    invoke-direct/range {v16 .. v16}, Lcom/htc/cscore/restapi/json/HtcHubContent;-><init>()V

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    new-instance v1, Lcom/htc/cscore/restapi/json/SearchResults;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/json/SearchResults;-><init>()V

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    const/16 v1, 0xa

    new-array v0, v1, [Lcom/htc/cscore/restapi/json/SearchResults;

    move-object/from16 v17, v0

    const/4 v1, 0x0

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x3

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x4

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x5

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x6

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/4 v1, 0x7

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/16 v1, 0x8

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/16 v1, 0x9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v17, v1

    const/16 v1, 0xa

    new-array v15, v1, [Lcom/htc/cscore/restapi/json/SearchResults;

    const/4 v1, 0x0

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->apps:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x1

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->music:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x2

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->scenes:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x3

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->skins:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x4

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->widgets:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x5

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->wallpapers:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x6

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->soundsets:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/4 v1, 0x7

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->ringtones:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/16 v1, 0x8

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->alarms:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/16 v1, 0x9

    iget-object v2, v14, Lcom/htc/cscore/restapi/json/HtcHubContent;->notifications:Lcom/htc/cscore/restapi/json/SearchResults;

    aput-object v2, v15, v1

    const/16 v18, 0x0

    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_4

    aget-object v1, v15, v18

    if-eqz v1, :cond_3

    aget-object v1, v15, v18

    invoke-virtual {v1}, Lcom/htc/cscore/restapi/json/SearchResults;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/cscore/restapi/utility/HotHubContent;->dateArray:[Ljava/lang/String;

    aget-object v1, v15, v18

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/cscore/restapi/json/SearchResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;

    iget-object v1, v1, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;->PublishedDate:Ljava/lang/String;

    aput-object v1, v2, v18

    :cond_1
    const/16 v19, 0x0

    :goto_1
    aget-object v1, v15, v18

    invoke-virtual {v1}, Lcom/htc/cscore/restapi/json/SearchResults;->size()I

    move-result v1

    move/from16 v0, v19

    if-ge v0, v1, :cond_3

    aget-object v1, v15, v18

    move/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/htc/cscore/restapi/json/SearchResults;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;

    iget-object v1, v1, Lcom/htc/cscore/restapi/json/HtcHubContent$HtcHubItem;->PublishedDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/cscore/restapi/utility/HotHubContent;->dateArray:[Ljava/lang/String;

    aget-object v2, v2, v18

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object v1, v17, v18

    aget-object v2, v15, v18

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/htc/cscore/restapi/json/SearchResults;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/cscore/restapi/json/SearchResults;->add(Ljava/lang/Object;)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/cscore/restapi/utility/HotHubContent;->zeroCallMade:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "pageNum must be 1 for the first call to this function."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_4
    return-object v16
.end method
