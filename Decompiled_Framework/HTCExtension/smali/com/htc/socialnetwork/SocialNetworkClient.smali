.class public abstract Lcom/htc/socialnetwork/SocialNetworkClient;
.super Ljava/lang/Object;
.source "SocialNetworkClient.java"

# interfaces
.implements Lcom/htc/socialnetwork/Constants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetwork"

.field protected static mCache:Lcom/htc/socialnetwork/Cache;

.field protected static mHttpClient:Lorg/apache/http/client/HttpClient;

.field protected static mSmallCache:Lcom/htc/socialnetwork/Cache;


# instance fields
.field protected mApi_key:Ljava/lang/String;

.field protected mCacheSize:J

.field protected mCapability:I

.field protected mContext:Landroid/content/Context;

.field protected mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mLastUpdateTimeKey:Ljava/lang/String;

.field protected mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

.field protected mPhotoLastUpdateTimeKey:Ljava/lang/String;

.field protected mPhotoPath:Ljava/lang/String;

.field protected mSecret:Ljava/lang/String;

.field protected mServiceName:Ljava/lang/String;

.field protected mSessionToken:Ljava/lang/String;

.field protected mSmallCacheSize:J

.field protected mSmallPhotoPath:Ljava/lang/String;

.field protected mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

.field protected mTaskManager:Lcom/htc/socialnetwork/TaskManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    iput v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCapability:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    :cond_0
    iput-object p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mApi_key:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSecret:Ljava/lang/String;

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    invoke-direct {v0, p1, p0}, Lcom/htc/socialnetwork/SocialNetworkDataHelper;-><init>(Landroid/content/Context;Lcom/htc/socialnetwork/SocialNetworkClient;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    invoke-direct {v0, p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;-><init>(Lcom/htc/socialnetwork/SocialNetworkClient;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/socialnetwork/Service;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->initHttpClient()V

    invoke-static {}, Lcom/htc/socialnetwork/TaskManager;->obtain()Lcom/htc/socialnetwork/TaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-static {}, Lcom/htc/socialnetwork/SmallTaskManager;->obtain()Lcom/htc/socialnetwork/SmallTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    return-void
.end method


# virtual methods
.method public Logout()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->logout()Z

    move-result v0

    return v0
.end method

.method public abstract addPhotoComment(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const/16 v2, 0x7d4

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v1, "Please pass filename only"

    invoke-direct {v0, v2, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_4
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    if-nez v0, :cond_5

    new-instance v0, Lcom/htc/socialnetwork/Cache;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    :cond_5
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/socialnetwork/Cache;->addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addSmallPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const/16 v2, 0x7d4

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v0, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const-string v1, "Please pass filename only"

    invoke-direct {v0, v2, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7d1

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_4
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    if-nez v0, :cond_5

    new-instance v0, Lcom/htc/socialnetwork/Cache;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    :cond_5
    sget-object v0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/socialnetwork/Cache;->addPhotoToCache(Landroid/graphics/Bitmap;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public abstract addToAlbum(Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract checkLogin()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public clearCache()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v3, 0x7d4

    invoke-direct {v2, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v2

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->deleteFiles(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract createAlbum(Ljava/util/HashMap;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract createAlbum(Ljava/util/HashMap;ZI)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract deepLink(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected deleteFiles(Ljava/io/File;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move-object v1, v2

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    invoke-virtual {p0, v3}, Lcom/htc/socialnetwork/SocialNetworkClient;->deleteFiles(Ljava/io/File;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    goto :goto_0
.end method

.method public abstract doAuth()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract doAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public downloadPhotoById(Ljava/lang/String;ZLcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J
    .locals 6

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/htc/socialnetwork/Photo;->getThumbUrl()Ljava/net/URL;

    move-result-object v5

    :goto_0
    invoke-virtual {p0, v5, p3, p4}, Lcom/htc/socialnetwork/SocialNetworkClient;->downloadPhotoByUrl(Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J

    move-result-wide v3

    :goto_1
    return-wide v3

    :cond_0
    invoke-virtual {v1}, Lcom/htc/socialnetwork/Photo;->getUrl()Ljava/net/URL;
    :try_end_0
    .catch Lcom/htc/socialnetwork/SocialNetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/htc/socialnetwork/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {p3, v2, p4}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-interface {p3, v0, p4}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public downloadPhotoByUrl(Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J
    .locals 10

    const-wide/16 v6, -0x1

    if-eqz p3, :cond_0

    const-string v1, "low_resolution"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    :goto_0
    return-wide v8

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    if-nez v1, :cond_6

    new-instance v1, Lcom/htc/socialnetwork/Cache;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    :cond_6
    new-instance v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/htc/socialnetwork/SocialNetworkClient;->mCache:Lcom/htc/socialnetwork/Cache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/socialnetwork/ImageDownloadRunnable;-><init>(Landroid/content/Context;Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;Lcom/htc/socialnetwork/Cache;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->setPhotoCache(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->getId()J

    move-result-wide v6

    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/TaskManager;->execute(Ljava/lang/Runnable;)V

    :goto_1
    move-wide v8, v6

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method public downloadSmallPhotoByUrl(Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;)J
    .locals 10

    const-wide/16 v6, -0x1

    if-eqz p3, :cond_0

    const-string v1, "low_resolution"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    :goto_0
    return-wide v8

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_3
    iget-wide v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_4

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d1

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    move-wide v8, v6

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    if-nez v1, :cond_6

    new-instance v1, Lcom/htc/socialnetwork/Cache;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-wide v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/socialnetwork/Cache;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    :cond_6
    new-instance v0, Lcom/htc/socialnetwork/ImageDownloadRunnable;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCache:Lcom/htc/socialnetwork/Cache;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/socialnetwork/ImageDownloadRunnable;-><init>(Landroid/content/Context;Ljava/net/URL;Lcom/htc/socialnetwork/PhotoCallback;Landroid/os/Bundle;Lcom/htc/socialnetwork/Cache;)V

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-wide v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->setPhotoCache(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/htc/socialnetwork/ImageDownloadRunnable;->getId()J

    move-result-wide v6

    const-wide/16 v1, -0x1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-virtual {v1, v0}, Lcom/htc/socialnetwork/SmallTaskManager;->execute(Ljava/lang/Runnable;)V

    :goto_1
    move-wide v8, v6

    goto/16 :goto_0

    :cond_7
    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7e2

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    invoke-interface {p2, v1, p3}, Lcom/htc/socialnetwork/PhotoCallback;->onError(Ljava/lang/Exception;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected abstract findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findAlbumList(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findEventById(J)Lcom/htc/socialnetwork/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendIds(Ljava/lang/String;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriends(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findFriendsWithContactData(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findGroupInviteList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findPhotoList(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findStatusList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected abstract findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract getAccountType()Ljava/lang/String;
.end method

.method public getAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findAlbumById(Ljava/lang/String;)Lcom/htc/socialnetwork/Album;

    move-result-object v0

    return-object v0
.end method

.method protected getAlbumIdList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findAlbumList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAlbums(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public getCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheSize()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    return-wide v0
.end method

.method public getDataHelper()Lcom/htc/socialnetwork/SocialNetworkDataHelper;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    return v0
.end method

.method public getEventById(J)Lcom/htc/socialnetwork/Event;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkClient;->findEventById(J)Lcom/htc/socialnetwork/Event;

    move-result-object v0

    return-object v0
.end method

.method protected getEvents(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/Event;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/socialnetwork/SocialNetworkClient;->findEvents(Ljava/lang/String;Ljava/util/Collection;J)V

    return-void
.end method

.method public abstract getFilePartName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected getFriendIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findFriendIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkClient;->findFriendInvites(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method protected getGroupIdList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findGroupIdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getGroupInviteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/GroupInvite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->findGroupInviteList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateTime()J
    .locals 5

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOCIAL_NETWORK_LAST_UPDATE_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v2, "SocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lastUpdateTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public abstract getLoginURL()Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract getLoginUser()Lcom/htc/socialnetwork/User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected getMsgUpdate(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Update;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findMsgUpdate(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findPhotoById(Ljava/lang/String;)Lcom/htc/socialnetwork/Photo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getPhotoComments(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getPhotoFavoriteList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method protected getPhotoIdList(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findPhotoList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoLastUpdateTime()J
    .locals 5

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOCIAL_NETWORK_PHOTO_LAST_UPDATE_TIME_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    :goto_1
    return-wide v2

    :catch_0
    move-exception v0

    const-string v2, "SocialNetwork"

    const-string v3, "something wrong in getPhotoLastUpdateTime"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SocialNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid lastUpdateTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public abstract getPhotos(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public abstract getRecentPhotos(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSessionToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public getSmallCachePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallCacheSize()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    return-wide v0
.end method

.method protected getStatusList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findStatusList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUpdatePhoto(Ljava/lang/String;J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/socialnetwork/Photo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUpdatePhotos(Ljava/util/Collection;J)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUploadParameters(Ljava/util/HashMap;)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract getUploadResponseMsg(Ljava/io/InputStream;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public abstract getUploadUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public getUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUserById(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/socialnetwork/User;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUserByIds(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public getUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->findUserByName(Ljava/lang/String;)Lcom/htc/socialnetwork/User;

    move-result-object v0

    return-object v0
.end method

.method protected initHttpClient()V
    .locals 8

    const v5, 0xea60

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v4, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    const-string v4, "HTC-Android/1.0"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v1, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    new-instance v4, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v4}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v4, Lcom/htc/socialnetwork/SocialNetworkClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method public isLogin()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v1, 0x7da

    invoke-direct {v0, v1}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->checkLogin()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 4

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public launchAccountManager()V
    .locals 0

    return-void
.end method

.method public launchAccountManager(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/htc/socialnetwork/SocialNetworkClient;->launchAccountManager(Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method

.method public launchAccountManager(Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->getAccountType()Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method protected abstract logout()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method protected abstract refreshData()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mObserver:Lcom/htc/socialnetwork/SocialNetworkClient$SocialNetworkContentObserver;

    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDataHelper:Lcom/htc/socialnetwork/SocialNetworkDataHelper;

    iput-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setDisplaySize(II)V
    .locals 0

    iput p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayWidth:I

    iput p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mDisplayHeight:I

    return-void
.end method

.method public setLastUpdateTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOCIAL_NETWORK_LAST_UPDATE_TIME_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setPhotoCache(Ljava/lang/String;JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCacheSize:J

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d4

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_1
    return-void
.end method

.method public abstract setPhotoFavorite(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation
.end method

.method public setPhotoLastUpdateTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SOCIAL_NETWORK_PHOTO_LAST_UPDATE_TIME_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoLastUpdateTimeKey:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected setService(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mServiceName:Ljava/lang/String;

    iput p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mCapability:I

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSessionToken:Ljava/lang/String;

    return-void
.end method

.method public setSmallPhotoCache(Ljava/lang/String;JZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation

    const/16 v3, 0x7d4

    iput-object p1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iput-wide p2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallCacheSize:J

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v1, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mPhotoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    invoke-direct {v1, v3}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_1
    if-eqz p4, :cond_2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallPhotoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7d3

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_2
    return-void
.end method

.method public stopDownloadAll(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/SmallTaskManager;->cancelAll()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-virtual {v0}, Lcom/htc/socialnetwork/TaskManager;->cancelAll()V

    goto :goto_0
.end method

.method public stopDownloadPhoto(J)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mTaskManager:Lcom/htc/socialnetwork/TaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/TaskManager;->cancel(J)Z

    move-result v0

    return v0
.end method

.method public stopDownloadSmallPhoto(J)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/socialnetwork/SocialNetworkClient;->mSmallTaskManager:Lcom/htc/socialnetwork/SmallTaskManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/socialnetwork/SmallTaskManager;->cancel(J)Z

    move-result v0

    return v0
.end method

.method protected abstract updateStatus(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/AuthenticationException;,
            Lcom/htc/socialnetwork/SocialNetworkException;
        }
    .end annotation
.end method

.method public updateUserStatus(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/socialnetwork/SocialNetworkException;,
            Lcom/htc/socialnetwork/AuthenticationException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/socialnetwork/SocialNetworkClient;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/htc/socialnetwork/SocialNetworkException;

    const/16 v2, 0x7da

    invoke-direct {v1, v2}, Lcom/htc/socialnetwork/SocialNetworkException;-><init>(I)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/socialnetwork/SocialNetworkClient;->updateStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
